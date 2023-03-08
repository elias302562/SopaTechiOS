import UIKit
import SnapKit

protocol SearchDisplaying: AnyObject { }

final class SearchViewController: UIViewController {

    /*
     - Criar views
     - Adicionar view na hierarquia
     - Setar as constraints
     */

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Pesquisar"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textAlignment = .center
        return label
    }()

    private let textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .line
        return textField
    }()

    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Continuar", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(
            self,
            action: #selector(didTapButton),
            for: .touchUpInside
        )
        return button
    }()

    let interactor: SearchInteracting
    
    init(interactor: SearchInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        buildViewHierarchy()
        buildConstraints()
    }

    @objc
    private func didTapButton() {
        interactor.search(text: textField.text)
    }

    private func buildViewHierarchy() {
        view.addSubview(titleLabel)
        view.addSubview(textField)
        view.addSubview(button)
    }

    private func buildConstraints() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(164)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
        }

        textField.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(70)
            $0.trailing.equalToSuperview().offset(-70)
            $0.top.equalTo(titleLabel.snp.bottom).offset(84)
            $0.height.equalTo(47)
        }

        button.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.bottom.equalToSuperview().offset(-56)
        }
    }
}

extension SearchViewController: SearchDisplaying { }
