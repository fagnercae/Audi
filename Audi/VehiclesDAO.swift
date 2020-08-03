//
//  VehiclesDAO.swift
//  Audi
//
//  Created by Fagner Caetano on 03/08/20.
//

import UIKit

class VehiclesDAO: NSObject {
    
    func returnAllVehicles() -> Array<Vehicles> {
        let A1 = Vehicles(model: "A1 Hatchback", picture: "capa-A1.jpg", details: "Uma revolução no segmento de compactos premium. Um automóvel pensado para o século XXI, reunindo sofisticação e sustentabilidade. Performance aliada a excelentes níveis de consumo e de emissão de poluentes, design ousado e itens de tecnologia ideais para quem vive conectado traduzem o Audi A1 Sportback.")
        let A3 = Vehicles(model: "A3 Sedan", picture: "capa-A3.jpg", details: "Para alguns, o mais importante em um carro é o desempenho. Outros preferem espaço para viajar com conforto. Para outros, o mais importante é o visual, que deve evocar modernidade e poder. E ainda há aqueles que querem tudo isso junto. Com o Audi A3 Sedan, é possível unir todos os perfis em uma única filosofia – design excepcional, com sustentabilidade e eficiência máximas para a vida moderna.")
        let A4 = Vehicles(model: "A4 Sedan", picture: "capa-A4.jpg", details: "O Audi A4 Sedan impressiona em tudo. Para entender melhor tamanha supremacia, é necessário conhecê-lo em cada detalhe, do exterior ao interior. A perfeita combinação de esportividade, luxo e tecnologia fica evidente quando observamos suas rodas de design arrojado, o volante de três raios multifuncional e o Virtual Cockpit, deixando-o com uma primeira impressão impossível de esquecer.")
        
        let vehiclesList: Array<Vehicles> = [A1, A3, A4]
        
        return vehiclesList
    }

}
