import SnapKit

class ViewController: UIViewController {
    
    lazy var cofeTitle = UILabel(frame: .zero)
    lazy var coffeeMaker = UILabel(frame: .zero)
    lazy var loginButton = UIButton(frame: .zero)
    lazy var credits = UILabel(frame: .zero)
    
    private func setupView() {
        cofeTitle.text = "Cofe for iOS ☕️"
        cofeTitle.textAlignment = .center
        cofeTitle.font = UIFont(name: "HelveticaNeue-Bold", size: 40)
        cofeTitle.textColor = .white
        self.view.addSubview(cofeTitle)
        
        coffeeMaker.text = "Alguém vai fazer o nosso cafézinho hoje! 😃"
        coffeeMaker.textAlignment = .center
        coffeeMaker.font = UIFont(name: "HelveticaNeue", size: 20)
        coffeeMaker.textColor = .white
        coffeeMaker.numberOfLines = 0
        self.view.addSubview(coffeeMaker)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .white
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.layer.cornerRadius = 5
        self.view.addSubview(loginButton)
        
        credits.text = "Made with ❤️ by tutu."
        credits.textAlignment = .center
        credits.font = UIFont(name: "HelveticaNeue", size: 15)
        credits.textColor = .white
        self.view.addSubview(credits)
        
    }
    
    private func setupConstraints() {
        cofeTitle.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(100)
            make.height.equalTo(300)
            make.width.equalTo(300)
        }
        
        coffeeMaker.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(cofeTitle.snp.bottom)
            make.height.equalTo(300)
            make.width.equalTo(300)
        }
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(coffeeMaker.snp.bottom).offset(50)
            make.height.equalTo(50)
            make.width.equalTo(100)
        }
        
        credits.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-20)
            make.height.equalTo(20)
            make.width.equalTo(300)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 145/255, green: 152/255, blue: 229/255, alpha: 1.0)
        
        setupView()
        setupConstraints()
        
    }
    
}


