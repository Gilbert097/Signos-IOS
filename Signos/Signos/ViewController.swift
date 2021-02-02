//
//  ViewController.swift
//  Signos
//
//  Created by Gilberto da Luz on 01/02/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos : [Signo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSignos()
    }
    
    private func addSignos(){
        signos.append(Signo(name:"Áries", description: "O ariano é uma pessoa cheia de energia e entusiasmo. Pioneiro e aventureiro, lhe encantam as metas, a liberdade e as idéias novas."))
        signos.append(Signo(name:"Touro", description: "Zeloso e possessivo, um cauro pode tender a ser inflexível e ressentido. As vezes os Touro pecam de ser cobiçosos e de permitir-se tudo."))
        signos.append(Signo(name:"Gêmeos", description: ""))
        signos.append(Signo(name:"Câncer", description: ""))
        signos.append(Signo(name:"Leão", description: ""))
        signos.append(Signo(name:"Virgem", description: ""))
        signos.append(Signo(name:"Libra", description: ""))
        signos.append(Signo(name:"Escorpião", description: ""))
        signos.append(Signo(name:"Sagitário", description: ""))
        signos.append(Signo(name:"Capricórnio", description: ""))
        signos.append(Signo(name:"Aquário", description: ""))
        signos.append(Signo(name:"Peixes", description: ""))
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int { 1 }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { signos.count }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentItem = signos[indexPath.row]
        let identifier = "signoItemList"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath )
        cell.textLabel?.text = currentItem.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let itemSelected = signos[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        let alertController = UIAlertController(title: "Sobre \(itemSelected.name)", message: itemSelected.description, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(okButton)
        present(alertController, animated: true, completion: nil)
    }
}

