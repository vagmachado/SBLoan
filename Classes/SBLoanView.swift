//
//  SBLoanView.swift
//  Pods
//
//  Created by Vagner Machado on 10/03/25.
//

import SwiftUI

public struct SBLoanView: View {
  
  // MARK: - Colors
  private let backgroundColor = Color(.systemGray6)
  private let primaryColor = Color(red: 255/255, green: 186/255, blue: 5/255)
  
  public init() { }

  public var body: some View {
    ZStack {
      LinearGradient(
        colors: [primaryColor, backgroundColor],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
      ).ignoresSafeArea()
      
      VStack(spacing: 20) {
        headerView
          .padding(.horizontal)

        loanCardView
          .padding(.horizontal)

        Spacer()
      }
      .padding(.top, 40)
    }
  }
  
  private var headerView: some View {
    VStack(alignment: .leading, spacing: 8) {
      HStack {
        Text("Empréstimo")
          .font(.title)
          .fontWeight(.medium)
        Text("Swift Bank")
          .font(.title)
          .fontWeight(.bold)
        Spacer()
      }
      Text("Antecipe seus planos")
        .font(.title3)
        .foregroundColor(.secondary)
    }
  }
  
  private var loanCardView: some View {
    VStack(alignment: .leading, spacing: 15) {
      Text("Veja sua opção de crédito pré-aprovada:")
        .font(.headline)
        .foregroundColor(.black)
      
      HStack(spacing: 10) {
        Image(systemName: "dollarsign.circle.fill")
          .foregroundColor(primaryColor)
          .font(.title2)
        Text("Empréstimo pessoal")
          .font(.body)
          .fontWeight(.regular)
        Spacer()
      }
      
      Divider()
      
      Text("Guardar dinheiro é o primeiro passo para realizar grandes sonhos.")
        .font(.caption)
        .foregroundColor(.secondary)
    }
    .padding()
    .background(.white)
    .cornerRadius(12)
    .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)
  }
}

#Preview {
    SBLoanView()
}
