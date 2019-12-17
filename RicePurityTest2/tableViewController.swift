//
//  tableView.swift
//  RicePurityTest2
//
//  Created by Timmy Tseng on 12/17/19.
//  Copyright © 2019 kaungkhantkyaw. All rights reserved.
//

import Foundation
import UIKit

class tableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var calculateButton: UIBarButtonItem!
    @IBOutlet weak var questionsTableView: UITableView!
    
    private var score = 0
    
    let sections = ["Click on every item you have done. MPS stands for Member of the Preferred Sex"]
    var questions = ["Held hands romantically?" ,
                     "Been on a date?" ,
                     "Been in a relationship?",
                     "Danced without leaving room for Jesus?",
                     "Kissed a non-family member?",
                     "Kissed a non-family member on the lips?",
                     "French kissed?",
                     "French kissed in public?",
                     "Kissed on the neck?",
                     "Kissed horizontally?",
                     "Given or received a hickey?",
                     "Kissed or been kissed on the breast?",
                     "Kissed someone below the belt?",
                     "Kissed for more than two hours consecutively?",
                     "Played a game involving stripping?",
                     "Seen or been seen by another person in a sensual context?",
                     "Masturbated?",
                     "Masturbated to a picture or video?",
                     "Masturbated while someone else was in the room?",
                     "Been caught masturbating?",
                     "Masturbated with an inanimate object?",
                     "Seen or read pornographic material?",
                     "Massaged or been massaged sensually?",
                     "Gone through the motions of intercourse while fully dressed?",
                     "Undressed or been undressed by a MPS (member of the preferred sex?",
                     "Showered with a MPS?",
                     "Fondled or had your butt cheeks fondled?",
                     "Fondled or had your breasts fondled?",
                     "Fondled or had your genitals fondled?",
                     "Had or given “blue balls”?",
                     "Had an orgasm due to someone else’s manipulation?",
                     "Sent a sexually explicit text or instant message?",
                     "Sent or received sexually explicit photographs?",
                     "Engaged in sexually explicit activity over video chat?",
                     "Cheated on a significant other during a relationship?",
                     "Purchased contraceptives?",
                     "Gave oral sex?",
                     "Received oral sex?",
                     "Ingested someone else’s genital secretion?",
                     "Used a sex toy with a partner?",
                     "Spent the night with a MPS?",
                     "Been walked in on while engaging in a sexual act?",
                     "Kicked a roommate out to commit a sexual act?",
                     "Ingested alcohol in a non-religious context?",
                     "Played a drinking game?",
                     "Been drunk?",
                     "Faked sobriety to parents or teachers?",
                     "Had severe memory loss due to alcohol?",
                     "Used tobacco?",
                     "Used marijuana?",
                     "Used a drug stronger than marijuana?",
                     "Used methamphetamine, crack cocaine, PCP, horse tranquilizers or heroin?",
                     "Been sent to the office of a principal, dean or judicial affairs representative for a disciplinary infraction?",
                     "Been put on disciplinary probation or suspended?",
                     "Urinated in public?",
                     "Gone skinny-dipping?",
                     "Gone streaking?",
                     "Seen a stripper?",
                     "Had the police called on you?",
                     "Run from the police?",
                     "Had the police question you?",
                     "Had the police handcuff you?",
                     "Been arrested?",
                     "Been convicted of a crime?",
                     "Been convicted of a felony?",
                     "Committed an act of vandalism?",
                     "Had sexual intercourse?",
                     "Had sexual intercourse three or more times in one night?",
                     "69?",
                     "Had sexual intercourse 10 or more times?",
                     "Had sexual intercourse in four or more positions?",
                     "Had sexual intercourse with a stranger or person you met within 24 hours?",
                     "Had sexual intercourse in a motor vehicle?",
                     "Had sexual intercourse outdoors?",
                     "Had sexual intercourse in public?",
                     "Had sexual intercourse in a swimming pool or hot tub?",
                     "Had sexual intercourse in a bed not belonging to you or your partner?",
                     "Had sexual intercourse while you or your partner’s parents were in the same home?",
                     "Had sexual intercourse with non-participating third party in the same room?",
                     "Joined the mile high club?",
                     "Participated in a “booty call” with a partner whom you were not in a relationship with?",
                     "Traveled 100 or more miles for the primary purpose of sexual intercourse?",
                     "Had sexual intercourse with a partner with a 3 or more year age difference?",
                     "Had sexual intercourse with a virgin?",
                     "Had sexual intercourse without a condom?",
                     "Had a STI test due to reasonable suspicion?",
                     "Had a STI?",
                     "Had a threesome?",
                     "Attended an orgy?",
                     "Had two or more distinct acts of sexual intercourse with two or more people within 24 hours?",
                     "Had sexual intercourse with five or more partners?",
                     "Been photographed or filmed during sexual intercourse by yourself or others?",
                     "Had period sex?",
                     "Had anal sex?",
                     "Had a pregnancy scare?",
                     "Impregnated someone or been impregnated?",
                     "Paid or been paid for a sexual act?",
                     "Committed an act of voyeurism?",
                     "Committed an act of incest?",
                     "Engaged in bestiality?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.rowHeight = UITableView.automaticDimension
        return UITableView.automaticDimension
    }
    
    // MARK: UITableViewDataSource
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell "PlainCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlainCell", for: indexPath)
        // Depending on the section, fill the textLabel with the relevant text

        
        //cell.accessoryType = UITableViewCell.AccessoryType.checkmark
       // cell.accessoryType = UITableViewCell.AccessoryType ? .checkmark : .none
        
        cell.textLabel?.text = questions[indexPath.row]
        cell.textLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.textLabel?.numberOfLines = 0
        // Return the configured cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        score += 1
        NSLog("Added 1 to score")
        NSLog("Current Score is: %i",score)
        
        //let selected = questions[indexPath.row]
        tableView.allowsMultipleSelection = true
        
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = .checkmark
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        score -= 1
        NSLog("Subtracted 1 from score")
        NSLog("Current Score is: %i",score)
        
        let cell = tableView.cellForRow(at: indexPath)
//        if let cell = tableView.cellForRow(at: indexPath) {
//            cell.accessoryType = .none
//        }
        if (cell?.accessoryType == .checkmark){
            cell?.accessoryType = .none
        }
    }
    
    func calculate() -> Int {
        return 100 - score
    }
    
    func results() -> String {
        var results:String = ""
        let finalScore = calculate()
        if(finalScore == 100){
            results = "\n\(finalScore)" + "\nWow, you are a saint!\n"
        } else if (finalScore > 50){
            results = "\n\(finalScore)" + "\nHmm not too bad.\n"
        } else if (finalScore > 30){
            results = "\n\(finalScore)" + "\nLooks like you have been having fun!\n"
        } else if (finalScore > 10){
            results = "\n\(finalScore)" + "\nOh my... Remember, this aint a bucket list!\n"
        } else if (finalScore > 0) {
            results = "\n\(finalScore)" + "\nI worry for you...\n"
        } else {
            results = "Congrats... but not congrats. You have completed everything.\n"
        }
        
        return results
    }
    
    @IBAction func calculateButtonAction(_ sender: Any) {
        
        var message:String = ""
        
                // Get clicked button title label text.
                //let titleText:String? = src.titleLabel!.text
        
                //message = "\(calculate())"
                message = results()
        
                // Create a UIAlertController object, you should provide title, alert message and dialog stype parameter.
                let alertController:UIAlertController = UIAlertController(title: "Your Score Is:", message: message, preferredStyle: UIAlertController.Style.alert)
        
                // Create a UIAlertAction object, this object will add a button at alert dialog bottom, the button text is OK, when click it just close the alert dialog.
                let alertAction:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil)
        
                // Add alertAction object to alertController.
                alertController.addAction(alertAction)
                // Popup the alert dialog.
                present(alertController, animated: true, completion: nil)
        
            }
    }

    

