//
//  LoginView.swift
//  Example_App_2
//
//  Created by Ахмеров Дмитрий Николаевич on 16.02.2024.
//

import SwiftUI

struct LoginView: View {

	@State var userLogin: String = ""
	@State var isInvalidLogin: Bool = false

	@ViewBuilder
	fileprivate func headerElements() -> some View {
		VStack {
			HStack {
				Spacer()
				Button {
					// action
				} label: {
					Image(systemName: "xmark")
						.resizable()
						.frame(width: 20, height: 20)
						.foregroundColor(.black)
						.padding(16)
				}
			}
			Spacer()
		}
	}

	@ViewBuilder
	fileprivate func footerElements() -> some View {
		VStack {
			Spacer()
			Button("Войти по почте") {
				// action
			}
			.padding(EdgeInsets(top: 0, leading: 0, bottom: -10, trailing: 0))
		}
	}

	@ViewBuilder
	fileprivate func loginButtons() -> some View {
		Button {
			withAnimation {
				isInvalidLogin = userLogin != "1234"
			}
		} label: {
			Text("Получить код")
				.foregroundColor(.white)
				.frame(minWidth: 100, maxWidth: .infinity, minHeight: 50)
				.background(.blue)
				.cornerRadius(10)
		}

		HStack {
			VStack {
				Divider()
					.foregroundColor(.gray)
					.frame(width: 128)
			}
			Text("или")
				.foregroundColor(.gray)
			VStack {
				Divider()
					.foregroundColor(.gray)
					.frame(width: 128)
			}
		}

		Button {
			// action
		} label: {
			HStack {
				Image(systemName: "apple.logo")
					.resizable()
					.frame(width: 20, height: 24)
					.foregroundColor(.white)
				Text("Вход с Apple")
			}
			.foregroundColor(.white)
			.frame(minWidth: 50, maxWidth: .infinity, minHeight: 50)
			.background(.black)
			.cornerRadius(10)
		}
	}

	@ViewBuilder
	fileprivate func bodyElements() -> some View {
		VStack {
			Text("Вход или регистрация")
				.font(.system(size: 20).bold())

			Spacer()
				.frame(height: 25)

			TextField("Телефон", text: $userLogin)
				.padding(16)
				.background(Color(.sRGB, red: 0.93, green: 0.95, blue: 0.97, opacity: 1))
				.cornerRadius(10)

			if isInvalidLogin {
				Text("Введите корректный номер телефона")
					.foregroundColor(.red)
					.font(Font.caption)
			}

			Spacer()
				.frame(height: 25)

			loginButtons()
		}
		.padding(16)
	}

	var body: some View {
		ZStack {
			headerElements()
			bodyElements()
			footerElements()
		}
	}
}

struct LoginView_Previews: PreviewProvider {
	static var previews: some View {
		LoginView()
	}
}
