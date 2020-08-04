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
        let A5 = Vehicles(model: "A5 Sportback", picture: "capa-A5.jpg", details: "A estrada é longa para todos, mas ela gosta mais de alguns. Surpreenda-se com o design esportivo. Surpreenda-se com a tecnologia. Chegou o Audi A5 Sportback, com motores 2.0 TFSI de 190 e 252 cavalos, câmbio S-Tronic de 7 velocidades e Audi Drive Select.")
        let A6 = Vehicles(model: "A6 Sedan", picture: "capa-A6", details: "A nova geração do sedan Audi A6 chegou ainda mais elegante e tecnológica. O design na nova linguagem Audi e o sistema digital e sensível ao toque fazem dele o companheiro ideal para quem procura luxo e inteligência. Sua extensa lista de equipamentos traz funcionalidades como câmera 360º e sistema de som Bang & Olufsen. Seu motor 3.0 TFSI V6 desenvolve 340 cv e 500 Nm de torque.")
        let A7 = Vehicles(model: "A7 Sportback", picture: "capa-A7", details: "Com inteligência e elegância, a nova geração do coupé de quatro portas Audi A7 Sportback virá para representar a nova linguagem de design da Audi. Sua traseira tem acabamento afunilado, semelhante a um iate, e cada detalhe de seu interior, como a tela do MMI em fusão com o painel, traz uma atmosfera futurista a esse coupé de luxo. O A7 tem ainda sistema de tração integral quattro de série e motor 3.0 TFSI V6, com sistema híbrido leve, que desenvolve 340 cv e 500 Nm de torque.")
        let Q3 = Vehicles(model: "Q3", picture: "capa-Q3", details: "Trazendo a nova linguagem de design e tecnologia da família Q, nesta segunda geração, o Q3 oferece ainda mais espaço interno e nova tela sensível ao toque, além de itens de segurança e assistência que irão transformar a sua experiência de direção.")
        let Q5 = Vehicles(model: "Q5", picture: "capa-Q5", details: "A nova geração do Audi Q5 confirma seu lugar especial entre os SUVs de luxo. Ele tem o tamanho ideal: funcional para o trânsito urbano e robusto para um fim de semana na praia ou na montanha. Em qualquer terreno ele se destaca com seu design poderoso, com rodas esportivas de 20 polegadas, e elegante grade singleframe com acabamento “high gloss black.")
        let Q7 = Vehicles(model: "Q7", picture: "capa-Q7", details: "Tecnologias de sistemas de assistência ao motorista e infotainment, uma experiência de condução envolvente, graças às soluções de tração integral quattro, suspensão pneumática, opcional, e um design potente além de muito espaço para até sete pessoas - esse é o Audi Q7.")
        let Q8 = Vehicles(model: "Q8", picture: "capa-Q8", details: "Sofisticado como um coupé e versátil como um grande SUV, o Audi Q8 chega para representar a renovação tecnológica da Audi e ser o mais luxuoso integrante da família Q. Com interior generoso e sistema operacional de última geração, ele é a opção ideal para quem busca um utilitário robusto e elegante. Seu sistema de tração permanente quattro garante o desempenho em terrenos difíceis, enquanto o motor 3.0 TFSI com tecnologia híbrida leve desenvolve 340 cv de potência e torque de 500 Nm.")
        let TT = Vehicles(model: "TT", picture: "capa-TT", details: "Experimente o melhor da série TT da Audi Sport. Potência sem limites, um design cativante, além de alta estabilidade e dinâmica de direção – um veículo que desafia os sentidos.")
        let R8 = Vehicles(model: "R8", picture: "capa-R8", details: "Os admiradores da Audi e apaixonados por pistas podem comemorar: o Audi R8 está de volta ao Brasil. Ele chega com uma personalização inédita. Agora, antes de ir para a linha de montagem, ele passa por um exigente olhar: o seu. Permitindo mais de um milhão e meio de combinações, o modelo chega para assumir a ponta dos esportivos e estabelecer as quatro argolas como uma combinação perfeita entre as pistas e as ruas.")
        
        
        let vehiclesList: Array<Vehicles> = [A1, A3, A4, A5, A6, A7, Q3, Q5, Q7, Q8, TT, R8]
        
        return vehiclesList
    }

}
