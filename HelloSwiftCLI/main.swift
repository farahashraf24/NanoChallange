
print ("Please enter your name")
let userName = readLine()
print("Hello, ",(userName!))
home()




func home(){
    print("""
-----------------------------------------------------
 👩🏻‍💻 Welcome To Computer Engineering Job Seekers 👩🏻‍💻
-----------------------------------------------------
Please Choose :
1. Build a CV
2. Find a job
""")
    let userChoice = Int(readLine()!)
    
    switch userChoice {
        
    case 1:buildCv()
    case 2:findJob()
    default:print("ERROR! PLEASE ENTER 1 OR 2")
        home()
    }
    
}


// User

func buildCv(){
    print (" Enter your full name")
    let userFullName = readLine()!
    print (" Enter your Email")
    let userEmail = readLine()!
    print (" Enter your Address")
    let userAddress = readLine()!
    print (" Enter your Education Info")
    let userEducation = readLine()!
    print (" Enter your Experience History")
    let userExpHistory = readLine()!
    print (" Enter your Skills")
    let userSkills = readLine()!
    print (" Enter the Language you speak")
    let userLanguage = readLine()!
    print ("To build your CV please press Enter")
    readLine()!
    print("""
    -------------------------------------------
     \(userFullName)
     \(userEmail)
     \(userAddress)
    -------------------------------------------
    Education:
    \(userEducation)

    Experience:
    \(userExpHistory)

    Skills:
    \(userSkills)

    Languages:
    \(userLanguage)




""")
    print("Do you want to go pick a job now ?")
    let userResponse = readLine()!
    switch userResponse {
    case "yes" : findJob()
    case "no" :home()
    default:home()
    }
    
}







func findJob() {
    print ("Please enter your years of experience")
    
    let userExpYears = Int(readLine()!)
    let headJobs = ["IT Risk Manager at BMW","Senior Software Engineer at Apple","Project Manager at ELM","Senior Software Engineer at Tesla","Senior Energy Trading Analyst at Mercedes"]
    let internships = ["STC","Apple Developer Academy","ARAMCO"]
    let zeroExpJobs = ["Junior IOS developer at ELM","Junior Engineer at MASA solution Company","Junior Cyber Security Engineer at SAIB"]
    let juniorJobs = ["Junior Cyber Security Engineer at SAIB","Junior Ericsson","Junior Software Engineer at Hexaware Technologies"]
    let middleJobs = ["Quality Specialist at STC","Software Engineer at Mobiley","IT Security Engineer at KIA","DB Administrator at AlRaghi Bank","Network Security Engineer at SABIC"]
    let seniorJobs = ["Manager IT Security at BMW","Sr Program Manager at Apple","IT Manager Zain","Senior Software Engineer - iOS at HungerStation"]
    
    
    switch userExpYears! {
    case 0 :
        print("Would you be more interested in an internship ? ")
        let intrenshipIntrest = readLine()
        if (intrenshipIntrest == "yes"){
            print("""
                  ------------------------------------------------
                             👩🏻‍💻 Internships List 👩🏻‍💻
                  ------------------------------------------------
                  """)
            for internship in internships {
                print(internship)
            }
        }
        else {
            print("""
                  ------------------------------------------------
                         👩🏻‍💻 Non Experienced job List 👩🏻‍💻
                  ------------------------------------------------
                  """)
            
            for job in zeroExpJobs {
                print(job)
            }
        }
        
    case 1...2 :
        
        print("""
              ------------------------------------------------
                           👩🏻‍💻 Jr Jobs List 👩🏻‍💻
              ------------------------------------------------
              """)
        for job in juniorJobs {
            print(job)
        }
        
    case 3...4 :
        
        print("""
              ------------------------------------------------
                           👩🏻‍💻 Middle Jobs List 👩🏻‍💻
              ------------------------------------------------
              """)
        for job in middleJobs {
            print(job)
        }
        
    case 5...8 :
        
        print("""
              ------------------------------------------------
                           👩🏻‍💻 Sr Jobs List 👩🏻‍💻
              ------------------------------------------------
              """)
        for job in seniorJobs {
            print(job)
        }
    case 10...15 :
        
        print("""
              ------------------------------------------------
                     👩🏻‍💻 Long Experience Jobs List 👩🏻‍💻
              ------------------------------------------------
              """)
        for job in headJobs {
            print(job)
        }
        
    default : print(headJobs)
    }
    print("Do you want to Build a CV ?")
    let userResponse = readLine()!
    switch userResponse {
    case "yes" : buildCv()
    case "no" :home()
    default:home()
    }

}


