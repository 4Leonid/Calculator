//
//  ViewController.swift
//  Calculator
//
//  Created by Леонид Турко on 07.04.2023.
//

import UIKit
import SwiftUI
import SnapKit

class CalculatorViewController: UIViewController {
  //  MARK: - Private Properties
  private lazy var mainStack: UIStackView = {
    let element = UIStackView()
    element.axis = .vertical
    element.distribution = .fillEqually
    element.spacing = 1
    return element
  }()
  
  private lazy var firstStack: UIStackView = {
    let element = UIStackView()
    element.axis = .horizontal
    element.distribution = .fillEqually
    element.backgroundColor = #colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1)
    element.spacing = 1
    return element
  }()
  
  private lazy var secondStack: UIStackView = {
    let element = UIStackView()
    element.axis = .horizontal
    element.distribution = .fillEqually
    element.spacing = 2
    return element
  }()
  
  private lazy var thirdStack: UIStackView = {
    let element = UIStackView()
    element.axis = .horizontal
    element.distribution = .fillEqually
    element.spacing = 2
    return element
  }()
  
  private lazy var fouthStack: UIStackView = {
    let element = UIStackView()
    element.axis = .horizontal
    element.distribution = .fillEqually
    element.spacing = 2
    return element
  }()
  
  private lazy var fifthStack: UIStackView = {
    let element = UIStackView()
    element.axis = .horizontal
    element.distribution = .fillEqually
    element.spacing = 2
    return element
  }()
  
  private lazy var sixthStack: UIStackView = {
    let element = UIStackView()
    element.axis = .horizontal
    element.distribution = .fill
    element.spacing = 2
    return element
  }()
  
  private lazy var label: UILabel = {
    let element = UILabel()
    element.text = "0"
    element.font = UIFont.systemFont(ofSize: 80)
    element.textColor = .white
    element.textAlignment = .right
    return element
  }()
  
  private lazy var percentButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("%", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var plusMinusButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("+/-", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var acButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("AC", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var divideButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("/", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 1, green: 0.5745739937, blue: 0.001978197834, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var sevenButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("7", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.1018092856, green: 0.669170022, blue: 0.9602075219, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var eightButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("8", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.1060102358, green: 0.6769260764, blue: 0.9721145034, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var nineButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("9", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.1060102358, green: 0.6769260764, blue: 0.9721145034, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var multipleButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("x", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 1, green: 0.5745739937, blue: 0.001978197834, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var fourButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("4", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.1018092856, green: 0.669170022, blue: 0.9602075219, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var fiveButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("5", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.1060102358, green: 0.6769260764, blue: 0.9721145034, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var sixButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("6", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.1060102358, green: 0.6769260764, blue: 0.9721145034, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var minusButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("-", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 1, green: 0.5745739937, blue: 0.001978197834, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var oneButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("1", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.1018092856, green: 0.669170022, blue: 0.9602075219, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var twoButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("2", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.1060102358, green: 0.6769260764, blue: 0.9721145034, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var threeButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("3", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.1060102358, green: 0.6769260764, blue: 0.9721145034, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var plusButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("+", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 1, green: 0.5745739937, blue: 0.001978197834, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var zeroButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("0", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.1060102358, green: 0.6769260764, blue: 0.9721145034, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var pointButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle(".", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 0.1060102358, green: 0.6769260764, blue: 0.9721145034, alpha: 1)
    element.tintColor = .white
    return element
  }()
  
  private lazy var equalButton: UIButton = {
    let element = UIButton(type: .system)
    element.setTitle("=", for: .normal)
    element.titleLabel?.font = UIFont.systemFont(ofSize: 50)
    element.backgroundColor = #colorLiteral(red: 1, green: 0.5745739937, blue: 0.001978197834, alpha: 1)
    element.tintColor = .white
    return element
  }()

  //  MARK: - Override Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .black
    addViews()
    setConstraints()
  }
}

//  MARK: -  Private Methods
extension CalculatorViewController {
  private func addViews() {
    view.addSubview(mainStack)
    mainStack.addArrangedSubview(firstStack)
    mainStack.addArrangedSubview(secondStack)
    mainStack.addArrangedSubview(thirdStack)
    mainStack.addArrangedSubview(fouthStack)
    mainStack.addArrangedSubview(fifthStack)
    mainStack.addArrangedSubview(sixthStack)
    
    firstStack.addArrangedSubview(label)
    secondStack.addArrangedSubview(percentButton)
    secondStack.addArrangedSubview(plusMinusButton)
    secondStack.addArrangedSubview(acButton)
    secondStack.addArrangedSubview(divideButton)
    
    thirdStack.addArrangedSubview(sevenButton)
    thirdStack.addArrangedSubview(eightButton)
    thirdStack.addArrangedSubview(nineButton)
    thirdStack.addArrangedSubview(multipleButton)
    
    fouthStack.addArrangedSubview(fourButton)
    fouthStack.addArrangedSubview(fiveButton)
    fouthStack.addArrangedSubview(sixButton)
    fouthStack.addArrangedSubview(minusButton)
    
    fifthStack.addArrangedSubview(oneButton)
    fifthStack.addArrangedSubview(twoButton)
    fifthStack.addArrangedSubview(threeButton)
    fifthStack.addArrangedSubview(plusButton)
    
    sixthStack.addArrangedSubview(zeroButton)
    sixthStack.addArrangedSubview(pointButton)
    sixthStack.addArrangedSubview(equalButton)
  }
  
  private func setConstraints() {
    mainStack.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
    
    pointButton.snp.makeConstraints { make in
      make.width.equalTo(threeButton.snp.width)
    }
    
    equalButton.snp.makeConstraints { make in
      make.width.equalTo(plusButton.snp.width)
    }
  }
}

//  MARK: - Show Canvas
struct ContentViewController: UIViewControllerRepresentable {
  
  typealias UIViewControllerType = CalculatorViewController
  
  func makeUIViewController(context: Context) -> UIViewControllerType {
    return CalculatorViewController()
  }
  
  func updateUIViewController(_ uiViewController: CalculatorViewController, context: Context) {}
}

struct ContentViewController_Previews: PreviewProvider {
  static var previews: some View {
    ContentViewController()
      .edgesIgnoringSafeArea(.all)
      .colorScheme(.light) // or .dark
  }
}
