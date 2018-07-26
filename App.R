####Copyleft Ivan Sanchez Fernandez 2018



########################################PACKAGES########################################
library(shiny)
library(meta)
########################################PACKAGES########################################












##########################################################################################################################
##########################################################BEGINNNING OF UI################################################
##########################################################################################################################
#### ui.R
ui <- fluidPage( 
  # Beginning of fluidPage
  
  tags$br(),
  tags$strong("METAANALYSIS OF RESCUE MEDICATIONS FOR ACUTE PROLONGED SEIZURES: Interactively summarize the best available evidence for proportion of seizures stopped within 5-10 minutes of administration of the rescue medication."),
  tags$br(),
  tags$header("This app is optimized for a full-screen computer or tablet. Please, maximize this window."),
  tags$header("Remember to enter appropriate inputs into the model: with inappropriate inputs the model will return inappropriate outputs or errors."),
  tags$strong("If some of the cells are empty the app returns error: WHEN YOU ADD OR MODIFY A STUDY, COMPLETE ALL CELLS TO ELIMINATE THE ERRORS AND SEE RESULTS."),
  tags$br(),
  tags$br(),
  
  sidebarLayout(
    # Beginning of sidebarLayout
    
#########################################BEGINNING OF INPUT########################################################    
    ### INPUT
    sidebarPanel(
      # Beginning of sidebarPanel
      
      fluidRow(
        # Beginning of fluidRow
        
        # Title
        tags$strong("INPUT"),    
        tags$br(),
        tags$br(),
        
        
        # Buttons for adding and removing rows
        actionButton("add", "Add new study", icon = icon("plus", class = NULL)),
        
        tags$br(),
        tags$br(),
        column(2, tags$strong("AED")), 
        column(4, tags$strong("Study")),
        column(2, tags$strong("N response")),
        column(2, tags$strong("N total")),
        column(2, tags$strong("Remove study")),
        
        
        #### PLACEHOLDER FOR THE ROWS
        # Placeholder for the rows
        tags$div(id = "placeholder"),
        
#######################################################################################################################################################        
        ########################################STUDIES THAT APPEAR AT BASELINE (IN THE EXISTING LITERATURE TODAY)#####################################
        ## FIRST BASELINE STUDY
        tags$div(
          id = 1,
          fluidRow(
            column(2, textInput(inputId = "AED1", label = NULL, value = "Rectal paraldehyde")
            ),
            column(4, textInput(inputId = "studyname1", label = NULL, value = "Rowland et al, 2009")
            ),
            column(2, textInput(inputId = "nresponded1", label = NULL, value = "33")
            ),
            column(2, textInput(inputId = "ntotal1", label = NULL, value = "53")
            ),
            column(2, actionButton(inputId = "remove1", label = "", icon = icon("times", class = NULL)))
          )),
        
        ## SECOND BASELINE STUDY
        tags$div(
          id = 2,
          fluidRow(
            column(2, textInput(inputId = "AED2", label = NULL, value = "Intramuscular paraldehyde")
            ),
            column(4, textInput(inputId = "studyname2", label = NULL, value = "Ahmad et al, 2006")
            ),
            column(2, textInput(inputId = "nresponded2", label = NULL, value = "49")
            ),
            column(2, textInput(inputId = "ntotal2", label = NULL, value = "80")
            ),
            column(2, actionButton(inputId = "remove2", label = "", icon = icon("times", class = NULL)))
          )),
        
        
        ## THIRD BASELINE STUDY
        tags$div(
          id = 3,
          fluidRow(
            column(2, textInput(inputId = "AED3", label = NULL, value = "Rectal diazepam")
            ),
            column(4, textInput(inputId = "studyname3", label = NULL, value = "Scott et al, 1999")
            ),
            column(2, textInput(inputId = "nresponded3", label = NULL, value = "23")
            ),
            column(2, textInput(inputId = "ntotal3", label = NULL, value = "39")
            ),
            column(2, actionButton(inputId = "remove3", label = "", icon = icon("times", class = NULL)))
          )),
        
        
        ## FOURTH BASELINE STUDY
        tags$div(
          id = 4,
          fluidRow(
            column(2, textInput(inputId = "AED4", label = NULL, value = "Rectal diazepam")
            ),
            column(4, textInput(inputId = "studyname4", label = NULL, value = "Fisgin et al,2002")
            ),
            column(2, textInput(inputId = "nresponded4", label = NULL, value = "13")
            ),
            column(2, textInput(inputId = "ntotal4", label = NULL, value = "22")
            ),
            column(2, actionButton(inputId = "remove4", label = "", icon = icon("times", class = NULL)))
          )),
        
        
        ## FIFTH BASELINE STUDY
        tags$div(
          id = 5,
          fluidRow(
            column(2, textInput(inputId = "AED5", label = NULL, value = "Rectal diazepam")
            ),
            column(4, textInput(inputId = "studyname5", label = NULL, value = "McIntyre et al, 2005")
            ),
            column(2, textInput(inputId = "nresponded5", label = NULL, value = "45")
            ),
            column(2, textInput(inputId = "ntotal5", label = NULL, value = "110")
            ),
            column(2, actionButton(inputId = "remove5", label = "", icon = icon("times", class = NULL)))
          )),
        
        
        ## SIXTH BASELINE STUDY
        tags$div(
          id = 6,
          fluidRow(
            column(2, textInput(inputId = "AED6", label = NULL, value = "Rectal diazepam")
            ),
            column(4, textInput(inputId = "studyname6", label = NULL, value = "Baysun et al, 2005")
            ),
            column(2, textInput(inputId = "nresponded6", label = NULL, value = "17")
            ),
            column(2, textInput(inputId = "ntotal6", label = NULL, value = "20")
            ),
            column(2, actionButton(inputId = "remove6", label = "", icon = icon("times", class = NULL)))
          )),
        
        
        ## SEVENTH BASELINE STUDY
        tags$div(
          id = 7,
          fluidRow(
            column(2, textInput(inputId = "AED7", label = NULL, value = "Rectal diazepam")
            ),
            column(4, textInput(inputId = "studyname7", label = NULL, value = "Bhattacharyya et al, 2006")
            ),
            column(2, textInput(inputId = "nresponded7", label = NULL, value = "85")
            ),
            column(2, textInput(inputId = "ntotal7", label = NULL, value = "96")
            ),
            column(2, actionButton(inputId = "remove7", label = "", icon = icon("times", class = NULL)))
          )),
        
        
        ## EIGHTH BASELINE STUDY
        tags$div(
          id = 8,
          fluidRow(
            column(2, textInput(inputId = "AED8", label = NULL, value = "Rectal diazepam")
            ),
            column(4, textInput(inputId = "studyname8", label = NULL, value = "Mpimbaza et al, 2008")
            ),
            column(2, textInput(inputId = "nresponded8", label = NULL, value = "26")
            ),
            column(2, textInput(inputId = "ntotal8", label = NULL, value = "59")
            ),
            column(2, actionButton(inputId = "remove8", label = "", icon = icon("times", class = NULL)))
          )),
        
        
        ## NINTH BASELINE STUDY
        tags$div(
          id = 9,
          fluidRow(
            column(2, textInput(inputId = "AED9", label = NULL, value = "Rectal diazepam")
            ),
            column(4, textInput(inputId = "studyname9", label = NULL, value = "Holsti et al, 2010")
            ),
            column(2, textInput(inputId = "nresponded9", label = NULL, value = "34")
            ),
            column(2, textInput(inputId = "ntotal9", label = NULL, value = "42")
            ),
            column(2, actionButton(inputId = "remove9", label = "", icon = icon("times", class = NULL)))
          )),
        
        
        ## TENTH BASELINE STUDY
        tags$div(
          id = 10,
          fluidRow(
            column(2, textInput(inputId = "AED10", label = NULL, value = "Rectal diazepam")
            ),
            column(4, textInput(inputId = "studyname10", label = NULL, value = "Ashrafi et al, 2010")
            ),
            column(2, textInput(inputId = "nresponded10", label = NULL, value = "40")
            ),
            column(2, textInput(inputId = "ntotal10", label = NULL, value = "49")
            ),
            column(2, actionButton(inputId = "remove10", label = "", icon = icon("times", class = NULL)))
          )),

                
        ## ELEVENTH BASELINE STUDY
        tags$div(
          id = 11,
          fluidRow(
            column(2, textInput(inputId = "AED11", label = NULL, value = "Rectal diazepam")
            ),
            column(4, textInput(inputId = "studyname11", label = NULL, value = "de Haan et al, 2010")
            ),
            column(2, textInput(inputId = "nresponded11", label = NULL, value = "56")
            ),
            column(2, textInput(inputId = "ntotal11", label = NULL, value = "63")
            ),
            column(2, actionButton(inputId = "remove11", label = "", icon = icon("times", class = NULL)))
          )),        
        
  
        ## TWELTH BASELINE STUDY
        tags$div(
          id = 12,
          fluidRow(
            column(2, textInput(inputId = "AED12", label = NULL, value = "Rectal diazepam")
            ),
            column(4, textInput(inputId = "studyname12", label = NULL, value = "Momen et al, 2015")
            ),
            column(2, textInput(inputId = "nresponded12", label = NULL, value = "47")
            ),
            column(2, textInput(inputId = "ntotal12", label = NULL, value = "50")
            ),
            column(2, actionButton(inputId = "remove12", label = "", icon = icon("times", class = NULL)))
          )),         

                
        ## THIRTEENTH BASELINE STUDY
        tags$div(
          id = 13,
          fluidRow(
            column(2, textInput(inputId = "AED13", label = NULL, value = "Intranasal midazolam")
            ),
            column(4, textInput(inputId = "studyname13", label = NULL, value = "Lahat et al, 2000")
            ),
            column(2, textInput(inputId = "nresponded13", label = NULL, value = "23")
            ),
            column(2, textInput(inputId = "ntotal13", label = NULL, value = "26")
            ),
            column(2, actionButton(inputId = "remove13", label = "", icon = icon("times", class = NULL)))
          )),         
              
 
        ## FOURTEENTH BASELINE STUDY
        tags$div(
          id = 14,
          fluidRow(
            column(2, textInput(inputId = "AED14", label = NULL, value = "Intranasal midazolam")
            ),
            column(4, textInput(inputId = "studyname14", label = NULL, value = "Scheepers et al, 2000")
            ),
            column(2, textInput(inputId = "nresponded14", label = NULL, value = "79")
            ),
            column(2, textInput(inputId = "ntotal14", label = NULL, value = "84")
            ),
            column(2, actionButton(inputId = "remove14", label = "", icon = icon("times", class = NULL)))
          )),         
        

        ## FIFTEENTH BASELINE STUDY
        tags$div(
          id = 15,
          fluidRow(
            column(2, textInput(inputId = "AED15", label = NULL, value = "Intranasal midazolam")
            ),
            column(4, textInput(inputId = "studyname15", label = NULL, value = "Fisgin et al, 2002")
            ),
            column(2, textInput(inputId = "nresponded15", label = NULL, value = "20")
            ),
            column(2, textInput(inputId = "ntotal15", label = NULL, value = "23")
            ),
            column(2, actionButton(inputId = "remove15", label = "", icon = icon("times", class = NULL)))
          )), 

        
        ## SIXTEENTH BASELINE STUDY
        tags$div(
          id = 16,
          fluidRow(
            column(2, textInput(inputId = "AED16", label = NULL, value = "Intranasal midazolam")
            ),
            column(4, textInput(inputId = "studyname16", label = NULL, value = "Harbord et al, 2004")
            ),
            column(2, textInput(inputId = "nresponded16", label = NULL, value = "48")
            ),
            column(2, textInput(inputId = "ntotal16", label = NULL, value = "54")
            ),
            column(2, actionButton(inputId = "remove16", label = "", icon = icon("times", class = NULL)))
          )),
        

        ## SEVENTEENTH BASELINE STUDY
        tags$div(
          id = 17,
          fluidRow(
            column(2, textInput(inputId = "AED17", label = NULL, value = "Intranasal midazolam")
            ),
            column(4, textInput(inputId = "studyname17", label = NULL, value = "Mahmoudian & Zadeh, 2004")
            ),
            column(2, textInput(inputId = "nresponded17", label = NULL, value = "35")
            ),
            column(2, textInput(inputId = "ntotal17", label = NULL, value = "35")
            ),
            column(2, actionButton(inputId = "remove17", label = "", icon = icon("times", class = NULL)))
          )),
        
               
        ## EIGHTEENTH BASELINE STUDY
        tags$div(
          id = 18,
          fluidRow(
            column(2, textInput(inputId = "AED18", label = NULL, value = "Intranasal midazolam")
            ),
            column(4, textInput(inputId = "studyname18", label = NULL, value = "Bhattacharyya et al, 2006")
            ),
            column(2, textInput(inputId = "nresponded18", label = NULL, value = "89")
            ),
            column(2, textInput(inputId = "ntotal18", label = NULL, value = "92")
            ),
            column(2, actionButton(inputId = "remove18", label = "", icon = icon("times", class = NULL)))
          )),     
   
             
        ## NINETEENTH BASELINE STUDY
        tags$div(
          id = 19,
          fluidRow(
            column(2, textInput(inputId = "AED19", label = NULL, value = "Intranasal midazolam")
            ),
            column(4, textInput(inputId = "studyname19", label = NULL, value = "Holsti et al, 2010")
            ),
            column(2, textInput(inputId = "nresponded19", label = NULL, value = "42")
            ),
            column(2, textInput(inputId = "ntotal19", label = NULL, value = "50")
            ),
            column(2, actionButton(inputId = "remove19", label = "", icon = icon("times", class = NULL)))
          )),      
        
 
        ## TWENTIETH BASELINE STUDY
        tags$div(
          id = 20,
          fluidRow(
            column(2, textInput(inputId = "AED20", label = NULL, value = "Intranasal midazolam")
            ),
            column(4, textInput(inputId = "studyname20", label = NULL, value = "de Haan et al, 2010")
            ),
            column(2, textInput(inputId = "nresponded20", label = NULL, value = "50")
            ),
            column(2, textInput(inputId = "ntotal20", label = NULL, value = "61")
            ),
            column(2, actionButton(inputId = "remove20", label = "", icon = icon("times", class = NULL)))
          )),        
        
        
        ## TWENTy-FIRST BASELINE STUDY
        tags$div(
          id = 21,
          fluidRow(
            column(2, textInput(inputId = "AED21", label = NULL, value = "Intranasal midazolam")
            ),
            column(4, textInput(inputId = "studyname21", label = NULL, value = "Javadzadeh et al, 2012")
            ),
            column(2, textInput(inputId = "nresponded21", label = NULL, value = "30")
            ),
            column(2, textInput(inputId = "ntotal21", label = NULL, value = "30")
            ),
            column(2, actionButton(inputId = "remove21", label = "", icon = icon("times", class = NULL)))
          )),          
        

        ## TWENTy-SECOND BASELINE STUDY
        tags$div(
          id = 22,
          fluidRow(
            column(2, textInput(inputId = "AED22", label = NULL, value = "Intranasal midazolam")
            ),
            column(4, textInput(inputId = "studyname22", label = NULL, value = "Thakker & Shanbag, 2013")
            ),
            column(2, textInput(inputId = "nresponded22", label = NULL, value = "18")
            ),
            column(2, textInput(inputId = "ntotal22", label = NULL, value = "27")
            ),
            column(2, actionButton(inputId = "remove22", label = "", icon = icon("times", class = NULL)))
          )),         

        
        ## TWENTy-THIRD BASELINE STUDY
        tags$div(
          id = 23,
          fluidRow(
            column(2, textInput(inputId = "AED23", label = NULL, value = "Buccal midazolam")
            ),
            column(4, textInput(inputId = "studyname23", label = NULL, value = "Scott et al, 1999")
            ),
            column(2, textInput(inputId = "nresponded23", label = NULL, value = "30")
            ),
            column(2, textInput(inputId = "ntotal23", label = NULL, value = "40")
            ),
            column(2, actionButton(inputId = "remove23", label = "", icon = icon("times", class = NULL)))
          )),       

        
        ## TWENTy-FOURTH BASELINE STUDY
        tags$div(
          id = 24,
          fluidRow(
            column(2, textInput(inputId = "AED24", label = NULL, value = "Buccal midazolam")
            ),
            column(4, textInput(inputId = "studyname24", label = NULL, value = "Baysun et al, 2005")
            ),
            column(2, textInput(inputId = "nresponded24", label = NULL, value = "18")
            ),
            column(2, textInput(inputId = "ntotal24", label = NULL, value = "23")
            ),
            column(2, actionButton(inputId = "remove24", label = "", icon = icon("times", class = NULL)))
          )),    
        
        
        ## TWENTy-FIFTH BASELINE STUDY
        tags$div(
          id = 25,
          fluidRow(
            column(2, textInput(inputId = "AED25", label = NULL, value = "Buccal midazolam")
            ),
            column(4, textInput(inputId = "studyname25", label = NULL, value = "McIntyre et al, 2005")
            ),
            column(2, textInput(inputId = "nresponded25", label = NULL, value = "71")
            ),
            column(2, textInput(inputId = "ntotal25", label = NULL, value = "109")
            ),
            column(2, actionButton(inputId = "remove25", label = "", icon = icon("times", class = NULL)))
          )),   
        
        
        ## TWENTy-SIXTH BASELINE STUDY
        tags$div(
          id = 26,
          fluidRow(
            column(2, textInput(inputId = "AED26", label = NULL, value = "Buccal midazolam")
            ),
            column(4, textInput(inputId = "studyname26", label = NULL, value = "Mpimbaza et al, 2008")
            ),
            column(2, textInput(inputId = "nresponded26", label = NULL, value = "36")
            ),
            column(2, textInput(inputId = "ntotal26", label = NULL, value = "49")
            ),
            column(2, actionButton(inputId = "remove26", label = "", icon = icon("times", class = NULL)))
          )),        
        
 
        ## TWENTy-SEVENTH BASELINE STUDY
        tags$div(
          id = 27,
          fluidRow(
            column(2, textInput(inputId = "AED27", label = NULL, value = "Buccal midazolam")
            ),
            column(4, textInput(inputId = "studyname27", label = NULL, value = "Talukdar & Chakrabarty, 2009")
            ),
            column(2, textInput(inputId = "nresponded27", label = NULL, value = "51")
            ),
            column(2, textInput(inputId = "ntotal27", label = NULL, value = "60")
            ),
            column(2, actionButton(inputId = "remove27", label = "", icon = icon("times", class = NULL)))
          )),         
        

        ## TWENTy-EIGHTH BASELINE STUDY
        tags$div(
          id = 28,
          fluidRow(
            column(2, textInput(inputId = "AED28", label = NULL, value = "Buccal midazolam")
            ),
            column(4, textInput(inputId = "studyname28", label = NULL, value = "Ashrafi et al, 2010")
            ),
            column(2, textInput(inputId = "nresponded28", label = NULL, value = "49")
            ),
            column(2, textInput(inputId = "ntotal28", label = NULL, value = "49")
            ),
            column(2, actionButton(inputId = "remove28", label = "", icon = icon("times", class = NULL)))
          )),         
        

        ## TWENTy-NINTH BASELINE STUDY
        tags$div(
          id = 29,
          fluidRow(
            column(2, textInput(inputId = "AED29", label = NULL, value = "Buccal midazolam")
            ),
            column(4, textInput(inputId = "studyname29", label = NULL, value = "Tonekaboni et al, 2012")
            ),
            column(2, textInput(inputId = "nresponded29", label = NULL, value = "13")
            ),
            column(2, textInput(inputId = "ntotal29", label = NULL, value = "32")
            ),
            column(2, actionButton(inputId = "remove29", label = "", icon = icon("times", class = NULL)))
          )),        

        
        ## THIRTHIETH BASELINE STUDY
        tags$div(
          id = 30,
          fluidRow(
            column(2, textInput(inputId = "AED30", label = NULL, value = "Intramuscular midazolam")
            ),
            column(4, textInput(inputId = "studyname30", label = NULL, value = "Chamberlain et al, 1997")
            ),
            column(2, textInput(inputId = "nresponded30", label = NULL, value = "12")
            ),
            column(2, textInput(inputId = "ntotal30", label = NULL, value = "13")
            ),
            column(2, actionButton(inputId = "remove30", label = "", icon = icon("times", class = NULL)))
          )),          
        
        
        ## THIRTY-FIRST BASELINE STUDY
        tags$div(
          id = 31,
          fluidRow(
            column(2, textInput(inputId = "AED31", label = NULL, value = "Intramuscular midazolam")
            ),
            column(4, textInput(inputId = "studyname31", label = NULL, value = "Shah & Deshmukh, 2005")
            ),
            column(2, textInput(inputId = "nresponded31", label = NULL, value = "45")
            ),
            column(2, textInput(inputId = "ntotal31", label = NULL, value = "50")
            ),
            column(2, actionButton(inputId = "remove31", label = "", icon = icon("times", class = NULL)))
          )),
        
        
        ## THIRTY-SECOND BASELINE STUDY
        tags$div(
          id = 32,
          fluidRow(
            column(2, textInput(inputId = "AED32", label = NULL, value = "Intramuscular midazolam")
            ),
            column(4, textInput(inputId = "studyname32", label = NULL, value = "Momen et al, 2015")
            ),
            column(2, textInput(inputId = "nresponded32", label = NULL, value = "48")
            ),
            column(2, textInput(inputId = "ntotal32", label = NULL, value = "50")
            ),
            column(2, actionButton(inputId = "remove32", label = "", icon = icon("times", class = NULL)))
          )), 
        
        
        ## THIRTY-THIRD BASELINE STUDY
        tags$div(
          id = 33,
          fluidRow(
            column(2, textInput(inputId = "AED33", label = NULL, value = "Intramuscular midazolam")
            ),
            column(4, textInput(inputId = "studyname33", label = NULL, value = "Portela et al, 2015")
            ),
            column(2, textInput(inputId = "nresponded33", label = NULL, value = "14")
            ),
            column(2, textInput(inputId = "ntotal33", label = NULL, value = "16")
            ),
            column(2, actionButton(inputId = "remove33", label = "", icon = icon("times", class = NULL)))
          )), 

        
        ## THIRTY-FOURTH BASELINE STUDY
        tags$div(
          id = 34,
          fluidRow(
            column(2, textInput(inputId = "AED34", label = NULL, value = "Intramuscular midazolam")
            ),
            column(4, textInput(inputId = "studyname34", label = NULL, value = "Welch et al, 2015")
            ),
            column(2, textInput(inputId = "nresponded34", label = NULL, value = "41")
            ),
            column(2, textInput(inputId = "ntotal34", label = NULL, value = "60")
            ),
            column(2, actionButton(inputId = "remove34", label = "", icon = icon("times", class = NULL)))
          )),         

        
        ## THIRTY-FIFTH BASELINE STUDY
        tags$div(
          id = 35,
          fluidRow(
            column(2, textInput(inputId = "AED35", label = NULL, value = "Intranasal lorazepam")
            ),
            column(4, textInput(inputId = "studyname35", label = NULL, value = "Ahmad et al, 2006")
            ),
            column(2, textInput(inputId = "nresponded35", label = NULL, value = "60")
            ),
            column(2, textInput(inputId = "ntotal35", label = NULL, value = "80")
            ),
            column(2, actionButton(inputId = "remove35", label = "", icon = icon("times", class = NULL)))
          )),          


        ## THIRTY-SIXTH BASELINE STUDY
        tags$div(
        id = 36,
        fluidRow(
          column(2, textInput(inputId = "AED36", label = NULL, value = "Intranasal lorazepam")
          ),
          column(4, textInput(inputId = "studyname36", label = NULL, value = "Arya et al, 2011")
          ),
          column(2, textInput(inputId = "nresponded36", label = NULL, value = "59")
          ),
          column(2, textInput(inputId = "ntotal36", label = NULL, value = "71")
          ),
          column(2, actionButton(inputId = "remove36", label = "", icon = icon("times", class = NULL)))
        ))       

#######################################################################################################################################################        
########################################END OF STUDIES THAT APPEAR AT BASELINE (IN THE EXISTING LITERATURE TODAY)#####################################                
      ) # End of fluidRow
      
      
    ), # End of sidebarPanel
    
#########################################END OF INPUT########################################################    







#########################################BEGINNING OF OUTPUT########################################################    
    ### OUTPUT
    mainPanel(
      # Beginning of mainPanel
      
      # Title
      tags$br(),
      tags$strong("OUTPUT"),    
      tags$br(),
      tags$br(),
      tags$strong("RANDOM EFFECTS META-ANALYSIS: scroll down as needed."),
      plotOutput("metaanalysis", width = 1000, height = 1000),
      tags$br(),
      tags$br(),
      tags$header("Ivan Sanchez Fernandez 2018. This work is copylefted under a General Public Licence (GPL)."),
      tags$header("Users are fee to run, study, and modify this software and to share and distribute original or modified versions of this software.")
      
#########################################END OF OUTPUT########################################################      
      
    ) # End of mainPanel
    
    
  ) # End of sidebarLayout
  
  # End of fluidPage  
)

##########################################################################################################################
##########################################################END OF UI################################################
##########################################################################################################################

















##########################################################################################################################
##########################################################BEGINNNING OF SERVER################################################
##########################################################################################################################

#### server.R
server <- function(input, output) {
  
  
  ## Keep track of elements inserted and not yet removed in the interactive reactivevalues list
  inserted <- reactiveValues(val = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 
                                     21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36))
  
  ## Add a row (a new input) for inserting a new study and a number to the interactive reactivevalues list when "Add new study" button is pressed
  observeEvent(input$add, {
    id <- max(inserted$val) + 1
    insertUI(
      selector = "#placeholder",
      where = "beforeBegin",
      ui = tags$div(
        id = id,
        # Each identifier has the number of that row which is the same id that appears in the interactive reactivevalues list
        fluidRow(
          column(2, textInput(inputId = paste0("AED", id), label = NULL)
          ),
          column(4, textInput(inputId = paste0("studyname", id), label = NULL)
          ),
          column(2, textInput(inputId = paste0("nresponded", id), label = NULL)
          ),
          column(2, textInput(inputId = paste0("ntotal", id), label = NULL)
          ),
          column(2, actionButton(inputId = paste0("remove", id), label = "", icon=icon("times", class = NULL))
          )
        ) 
      )
    )
    # Update the interactive reactivevalues list with the new number
    inserted$val <- c(inserted$val, id)
  })
  
  
  
  
  
  #############################################################################################################
  ####################################REMOVE UNWANTED ROWS##################################################### 
  #####################Values for rows 1 to 100 to allow for multiple potential changes in rows 
  
  # When the delete button is pushed, this row (the row with this number) is deleted 
  #and the inserted$val is updated taking out this number of row
  observeEvent(input$remove1,{
    removeUI(
      selector = paste0('#', 1)
    )
    inserted$val <- inserted$val[!inserted$val %in% 1]
  })    
  
  
  observeEvent(input$remove2,{
    removeUI(
      selector = paste0('#', 2)
    )
    inserted$val <- inserted$val[!inserted$val %in% 2]
  })   
  
  
  observeEvent(input$remove3,{
    removeUI(
      selector = paste0('#', 3)
    )
    inserted$val <- inserted$val[!inserted$val %in% 3]
  })    
  
  
  observeEvent(input$remove4,{
    removeUI(
      selector = paste0('#', 4)
    )
    inserted$val <- inserted$val[!inserted$val %in% 4]
  })  
  
  
  observeEvent(input$remove5,{
    removeUI(
      selector = paste0('#', 5)
    )
    inserted$val <- inserted$val[!inserted$val %in% 5]
  })    
  
  
  observeEvent(input$remove6,{
    removeUI(
      selector = paste0('#', 6)
    )
    inserted$val <- inserted$val[!inserted$val %in% 6]
  })   
  
  
  observeEvent(input$remove7,{
    removeUI(
      selector = paste0('#', 7)
    )
    inserted$val <- inserted$val[!inserted$val %in% 7]
  })    
  
  
  observeEvent(input$remove8,{
    removeUI(
      selector = paste0('#', 8)
    )
    inserted$val <- inserted$val[!inserted$val %in% 8]
  })  
  
  
  observeEvent(input$remove9,{
    removeUI(
      selector = paste0('#', 9)
    )
    inserted$val <- inserted$val[!inserted$val %in% 9]
  })    
  
  
  observeEvent(input$remove10,{
    removeUI(
      selector = paste0('#', 10)
    )
    inserted$val <- inserted$val[!inserted$val %in% 10]
  })   
  
  
  observeEvent(input$remove11,{
    removeUI(
      selector = paste0('#', 11)
    )
    inserted$val <- inserted$val[!inserted$val %in% 11]
  })    
  
  
  observeEvent(input$remove12,{
    removeUI(
      selector = paste0('#', 12)
    )
    inserted$val <- inserted$val[!inserted$val %in% 12]
  })   
  
  
  observeEvent(input$remove13,{
    removeUI(
      selector = paste0('#', 13)
    )
    inserted$val <- inserted$val[!inserted$val %in% 13]
  })    
  
  
  observeEvent(input$remove14,{
    removeUI(
      selector = paste0('#', 14)
    )
    inserted$val <- inserted$val[!inserted$val %in% 14]
  })  
  
  
  observeEvent(input$remove15,{
    removeUI(
      selector = paste0('#', 15)
    )
    inserted$val <- inserted$val[!inserted$val %in% 15]
  })    
  
  
  observeEvent(input$remove16,{
    removeUI(
      selector = paste0('#', 16)
    )
    inserted$val <- inserted$val[!inserted$val %in% 16]
  })   
  
  
  observeEvent(input$remove17,{
    removeUI(
      selector = paste0('#', 17)
    )
    inserted$val <- inserted$val[!inserted$val %in% 17]
  })    
  
  
  observeEvent(input$remove18,{
    removeUI(
      selector = paste0('#', 18)
    )
    inserted$val <- inserted$val[!inserted$val %in% 18]
  })  
  
  
  observeEvent(input$remove19,{
    removeUI(
      selector = paste0('#', 19)
    )
    inserted$val <- inserted$val[!inserted$val %in% 19]
  })    
  
  
  observeEvent(input$remove20,{
    removeUI(
      selector = paste0('#', 20)
    )
    inserted$val <- inserted$val[!inserted$val %in% 20]
  })     
  
  
  observeEvent(input$remove21,{
    removeUI(
      selector = paste0('#', 21)
    )
    inserted$val <- inserted$val[!inserted$val %in% 21]
  })    
  
  
  observeEvent(input$remove22,{
    removeUI(
      selector = paste0('#', 22)
    )
    inserted$val <- inserted$val[!inserted$val %in% 22]
  })   
  
  
  observeEvent(input$remove23,{
    removeUI(
      selector = paste0('#', 23)
    )
    inserted$val <- inserted$val[!inserted$val %in% 23]
  })    
  
  
  observeEvent(input$remove24,{
    removeUI(
      selector = paste0('#', 24)
    )
    inserted$val <- inserted$val[!inserted$val %in% 24]
  })  
  
  
  observeEvent(input$remove25,{
    removeUI(
      selector = paste0('#', 25)
    )
    inserted$val <- inserted$val[!inserted$val %in% 25]
  })    
  
  
  observeEvent(input$remove26,{
    removeUI(
      selector = paste0('#', 26)
    )
    inserted$val <- inserted$val[!inserted$val %in% 26]
  })   
  
  
  observeEvent(input$remove27,{
    removeUI(
      selector = paste0('#', 27)
    )
    inserted$val <- inserted$val[!inserted$val %in% 27]
  })    
  
  
  observeEvent(input$remove28,{
    removeUI(
      selector = paste0('#', 28)
    )
    inserted$val <- inserted$val[!inserted$val %in% 28]
  })  
  
  
  observeEvent(input$remove29,{
    removeUI(
      selector = paste0('#', 29)
    )
    inserted$val <- inserted$val[!inserted$val %in% 29]
  })    
  
  
  observeEvent(input$remove30,{
    removeUI(
      selector = paste0('#', 30)
    )
    inserted$val <- inserted$val[!inserted$val %in% 30]
  })    
  
  
  observeEvent(input$remove31,{
    removeUI(
      selector = paste0('#', 31)
    )
    inserted$val <- inserted$val[!inserted$val %in% 31]
  })    
  
  
  observeEvent(input$remove32,{
    removeUI(
      selector = paste0('#', 32)
    )
    inserted$val <- inserted$val[!inserted$val %in% 32]
  })   
  
  
  observeEvent(input$remove33,{
    removeUI(
      selector = paste0('#', 33)
    )
    inserted$val <- inserted$val[!inserted$val %in% 33]
  })    
  
  
  observeEvent(input$remove34,{
    removeUI(
      selector = paste0('#', 34)
    )
    inserted$val <- inserted$val[!inserted$val %in% 34]
  })  
  
  
  observeEvent(input$remove35,{
    removeUI(
      selector = paste0('#', 35)
    )
    inserted$val <- inserted$val[!inserted$val %in% 35]
  })    
  
  
  observeEvent(input$remove36,{
    removeUI(
      selector = paste0('#', 36)
    )
    inserted$val <- inserted$val[!inserted$val %in% 36]
  })   
  
  
  observeEvent(input$remove37,{
    removeUI(
      selector = paste0('#', 37)
    )
    inserted$val <- inserted$val[!inserted$val %in% 37]
  })    
  
  
  observeEvent(input$remove38,{
    removeUI(
      selector = paste0('#', 38)
    )
    inserted$val <- inserted$val[!inserted$val %in% 38]
  })  
  
  
  observeEvent(input$remove39,{
    removeUI(
      selector = paste0('#', 39)
    )
    inserted$val <- inserted$val[!inserted$val %in% 39]
  })    
  
  
  observeEvent(input$remove40,{
    removeUI(
      selector = paste0('#', 40)
    )
    inserted$val <- inserted$val[!inserted$val %in% 40]
  })    
  
  
  observeEvent(input$remove41,{
    removeUI(
      selector = paste0('#', 41)
    )
    inserted$val <- inserted$val[!inserted$val %in% 41]
  })    
  
  
  observeEvent(input$remove42,{
    removeUI(
      selector = paste0('#', 42)
    )
    inserted$val <- inserted$val[!inserted$val %in% 42]
  })   
  
  
  observeEvent(input$remove43,{
    removeUI(
      selector = paste0('#', 43)
    )
    inserted$val <- inserted$val[!inserted$val %in% 43]
  })    
  
  
  observeEvent(input$remove44,{
    removeUI(
      selector = paste0('#', 44)
    )
    inserted$val <- inserted$val[!inserted$val %in% 44]
  })  
  
  
  observeEvent(input$remove45,{
    removeUI(
      selector = paste0('#', 45)
    )
    inserted$val <- inserted$val[!inserted$val %in% 45]
  })    
  
  
  observeEvent(input$remove46,{
    removeUI(
      selector = paste0('#', 46)
    )
    inserted$val <- inserted$val[!inserted$val %in% 46]
  })   
  
  
  observeEvent(input$remove47,{
    removeUI(
      selector = paste0('#', 47)
    )
    inserted$val <- inserted$val[!inserted$val %in% 47]
  })    
  
  
  observeEvent(input$remove48,{
    removeUI(
      selector = paste0('#', 48)
    )
    inserted$val <- inserted$val[!inserted$val %in% 48]
  })  
  
  
  observeEvent(input$remove49,{
    removeUI(
      selector = paste0('#', 49)
    )
    inserted$val <- inserted$val[!inserted$val %in% 49]
  })    
  
  
  observeEvent(input$remove50,{
    removeUI(
      selector = paste0('#', 50)
    )
    inserted$val <- inserted$val[!inserted$val %in% 50]
  })   
  
  
  observeEvent(input$remove51,{
    removeUI(
      selector = paste0('#', 51)
    )
    inserted$val <- inserted$val[!inserted$val %in% 51]
  })    
  
  
  observeEvent(input$remove52,{
    removeUI(
      selector = paste0('#', 52)
    )
    inserted$val <- inserted$val[!inserted$val %in% 52]
  })   
  
  
  observeEvent(input$remove53,{
    removeUI(
      selector = paste0('#', 53)
    )
    inserted$val <- inserted$val[!inserted$val %in% 53]
  })    
  
  
  observeEvent(input$remove54,{
    removeUI(
      selector = paste0('#', 54)
    )
    inserted$val <- inserted$val[!inserted$val %in% 54]
  })  
  
  
  observeEvent(input$remove55,{
    removeUI(
      selector = paste0('#', 55)
    )
    inserted$val <- inserted$val[!inserted$val %in% 55]
  })    
  
  
  observeEvent(input$remove56,{
    removeUI(
      selector = paste0('#', 56)
    )
    inserted$val <- inserted$val[!inserted$val %in% 56]
  })   
  
  
  observeEvent(input$remove57,{
    removeUI(
      selector = paste0('#', 57)
    )
    inserted$val <- inserted$val[!inserted$val %in% 57]
  })    
  
  
  observeEvent(input$remove58,{
    removeUI(
      selector = paste0('#', 58)
    )
    inserted$val <- inserted$val[!inserted$val %in% 58]
  })  
  
  
  observeEvent(input$remove59,{
    removeUI(
      selector = paste0('#', 59)
    )
    inserted$val <- inserted$val[!inserted$val %in% 59]
  })    
  
  
  observeEvent(input$remove60,{
    removeUI(
      selector = paste0('#', 60)
    )
    inserted$val <- inserted$val[!inserted$val %in% 60]
  })     
  
  
  observeEvent(input$remove61,{
    removeUI(
      selector = paste0('#', 61)
    )
    inserted$val <- inserted$val[!inserted$val %in% 61]
  })    
  
  
  observeEvent(input$remove62,{
    removeUI(
      selector = paste0('#', 62)
    )
    inserted$val <- inserted$val[!inserted$val %in% 62]
  })   
  
  
  observeEvent(input$remove63,{
    removeUI(
      selector = paste0('#', 63)
    )
    inserted$val <- inserted$val[!inserted$val %in% 63]
  })    
  
  
  observeEvent(input$remove64,{
    removeUI(
      selector = paste0('#', 64)
    )
    inserted$val <- inserted$val[!inserted$val %in% 64]
  })  
  
  
  observeEvent(input$remove65,{
    removeUI(
      selector = paste0('#', 65)
    )
    inserted$val <- inserted$val[!inserted$val %in% 65]
  })    
  
  
  observeEvent(input$remove66,{
    removeUI(
      selector = paste0('#', 66)
    )
    inserted$val <- inserted$val[!inserted$val %in% 66]
  })   
  
  
  observeEvent(input$remove67,{
    removeUI(
      selector = paste0('#', 67)
    )
    inserted$val <- inserted$val[!inserted$val %in% 67]
  })    
  
  
  observeEvent(input$remove68,{
    removeUI(
      selector = paste0('#', 68)
    )
    inserted$val <- inserted$val[!inserted$val %in% 68]
  })  
  
  
  observeEvent(input$remove69,{
    removeUI(
      selector = paste0('#', 69)
    )
    inserted$val <- inserted$val[!inserted$val %in% 69]
  })    
  
  
  observeEvent(input$remove70,{
    removeUI(
      selector = paste0('#', 70)
    )
    inserted$val <- inserted$val[!inserted$val %in% 70]
  })   
  
  
  observeEvent(input$remove71,{
    removeUI(
      selector = paste0('#', 71)
    )
    inserted$val <- inserted$val[!inserted$val %in% 71]
  })    
  
  
  observeEvent(input$remove72,{
    removeUI(
      selector = paste0('#', 72)
    )
    inserted$val <- inserted$val[!inserted$val %in% 72]
  })   
  
  
  observeEvent(input$remove73,{
    removeUI(
      selector = paste0('#', 73)
    )
    inserted$val <- inserted$val[!inserted$val %in% 73]
  })    
  
  
  observeEvent(input$remove74,{
    removeUI(
      selector = paste0('#', 74)
    )
    inserted$val <- inserted$val[!inserted$val %in% 74]
  })  
  
  
  observeEvent(input$remove75,{
    removeUI(
      selector = paste0('#', 75)
    )
    inserted$val <- inserted$val[!inserted$val %in% 75]
  })    
  
  
  observeEvent(input$remove76,{
    removeUI(
      selector = paste0('#', 76)
    )
    inserted$val <- inserted$val[!inserted$val %in% 76]
  })   
  
  
  observeEvent(input$remove77,{
    removeUI(
      selector = paste0('#', 77)
    )
    inserted$val <- inserted$val[!inserted$val %in% 77]
  })    
  
  
  observeEvent(input$remove78,{
    removeUI(
      selector = paste0('#', 78)
    )
    inserted$val <- inserted$val[!inserted$val %in% 78]
  })  
  
  
  observeEvent(input$remove79,{
    removeUI(
      selector = paste0('#', 79)
    )
    inserted$val <- inserted$val[!inserted$val %in% 79]
  })    
  
  
  observeEvent(input$remove80,{
    removeUI(
      selector = paste0('#', 80)
    )
    inserted$val <- inserted$val[!inserted$val %in% 80]
  })   
  
  
  observeEvent(input$remove81,{
    removeUI(
      selector = paste0('#', 81)
    )
    inserted$val <- inserted$val[!inserted$val %in% 81]
  })    
  
  
  observeEvent(input$remove82,{
    removeUI(
      selector = paste0('#', 82)
    )
    inserted$val <- inserted$val[!inserted$val %in% 82]
  })   
  
  
  observeEvent(input$remove83,{
    removeUI(
      selector = paste0('#', 83)
    )
    inserted$val <- inserted$val[!inserted$val %in% 83]
  })    
  
  
  observeEvent(input$remove84,{
    removeUI(
      selector = paste0('#', 84)
    )
    inserted$val <- inserted$val[!inserted$val %in% 84]
  })  
  
  
  observeEvent(input$remove85,{
    removeUI(
      selector = paste0('#', 85)
    )
    inserted$val <- inserted$val[!inserted$val %in% 85]
  })    
  
  
  observeEvent(input$remove86,{
    removeUI(
      selector = paste0('#', 86)
    )
    inserted$val <- inserted$val[!inserted$val %in% 86]
  })   
  
  
  observeEvent(input$remove87,{
    removeUI(
      selector = paste0('#', 87)
    )
    inserted$val <- inserted$val[!inserted$val %in% 87]
  })    
  
  
  observeEvent(input$remove88,{
    removeUI(
      selector = paste0('#', 88)
    )
    inserted$val <- inserted$val[!inserted$val %in% 88]
  })  
  
  
  observeEvent(input$remove89,{
    removeUI(
      selector = paste0('#', 89)
    )
    inserted$val <- inserted$val[!inserted$val %in% 89]
  })    
  
  
  observeEvent(input$remove90,{
    removeUI(
      selector = paste0('#', 90)
    )
    inserted$val <- inserted$val[!inserted$val %in% 90]
  })   
  

  observeEvent(input$remove91,{
    removeUI(
      selector = paste0('#', 91)
    )
    inserted$val <- inserted$val[!inserted$val %in% 91]
  })    
  
  
  observeEvent(input$remove92,{
    removeUI(
      selector = paste0('#', 92)
    )
    inserted$val <- inserted$val[!inserted$val %in% 92]
  })   
  
  
  observeEvent(input$remove93,{
    removeUI(
      selector = paste0('#', 93)
    )
    inserted$val <- inserted$val[!inserted$val %in% 93]
  })    
  
  
  observeEvent(input$remove94,{
    removeUI(
      selector = paste0('#', 94)
    )
    inserted$val <- inserted$val[!inserted$val %in% 94]
  })  
  
  
  observeEvent(input$remove95,{
    removeUI(
      selector = paste0('#', 95)
    )
    inserted$val <- inserted$val[!inserted$val %in% 95]
  })    
  
  
  observeEvent(input$remove96,{
    removeUI(
      selector = paste0('#', 96)
    )
    inserted$val <- inserted$val[!inserted$val %in% 96]
  })   
  
  
  observeEvent(input$remove97,{
    removeUI(
      selector = paste0('#', 97)
    )
    inserted$val <- inserted$val[!inserted$val %in% 97]
  })    
  
  
  observeEvent(input$remove98,{
    removeUI(
      selector = paste0('#', 98)
    )
    inserted$val <- inserted$val[!inserted$val %in% 98]
  })  
  
  
  observeEvent(input$remove99,{
    removeUI(
      selector = paste0('#', 99)
    )
    inserted$val <- inserted$val[!inserted$val %in% 99]
  })    
  
  
  observeEvent(input$remove100,{
    removeUI(
      selector = paste0('#', 100)
    )
    inserted$val <- inserted$val[!inserted$val %in% 100]
  })   
  
  
  ####################################END OF REMOVE UNWANTED ROWS##################################################### 
###############################################################################################################  
  
  
  
  
  
  
  
############################################### CREATE METAANALYSIS PLOT#########################################
#################################################################################################################
  output$metaanalysis <- renderPlot({
    
    
## Collect the inputs
## Allow 100 inputs to allow for multiple changes in studies inputs and multiple studies
    
    # AEDs
    AEDs <- c(input$AED1, input$AED2, input$AED3, input$AED4, input$AED5, 
              input$AED6, input$AED7, input$AED8, input$AED9, input$AED10, 
              input$AED11, input$AED12, input$AED13, input$AED14, input$AED15,
              input$AED16, input$AED17, input$AED18, input$AED19, input$AED20,
              input$AED21, input$AED22, input$AED23, input$AED24, input$AED25,
              input$AED26, input$AED27, input$AED28, input$AED29, input$AED30,
              input$AED31, input$AED32, input$AED33, input$AED34, input$AED35,
              input$AED36, input$AED37, input$AED38, input$AED39, input$AED40,
              input$AED41, input$AED42, input$AED43, input$AED44, input$AED45,
              input$AED46, input$AED47, input$AED48, input$AED49, input$AED50,
              input$AED51, input$AED52, input$AED53, input$AED54, input$AED55,
              input$AED56, input$AED57, input$AED58, input$AED59, input$AED60,
              input$AED61, input$AED62, input$AED63, input$AED64, input$AED65,
              input$AED66, input$AED67, input$AED68, input$AED69, input$AED70,
              input$AED71, input$AED72, input$AED73, input$AED74, input$AED75,
              input$AED76, input$AED77, input$AED78, input$AED79, input$AED80,
              input$AED81, input$AED82, input$AED83, input$AED84, input$AED85,
              input$AED86, input$AED87, input$AED88, input$AED89, input$AED90,
              input$AED91, input$AED92, input$AED93, input$AED94, input$AED95,
              input$AED96, input$AED97, input$AED98, input$AED99, input$AED100)
    # Consider only those AEDs from studies that have not been deleted and are in the interactive reactivevalues list 
    AEDs <- AEDs[inserted$val]
    
    
    
    # Studies
    studies <- c(input$studyname1, input$studyname2, input$studyname3, input$studyname4, input$studyname5, 
                 input$studyname6, input$studyname7, input$studyname8, input$studyname9, input$studyname10, 
                 input$studyname11, input$studyname12, input$studyname13, input$studyname14, input$studyname15,
                 input$studyname16, input$studyname17, input$studyname18, input$studyname19, input$studyname20,
                 input$studyname21, input$studyname22, input$studyname23, input$studyname24, input$studyname25,
                 input$studyname26, input$studyname27, input$studyname28, input$studyname29, input$studyname30,
                 input$studyname31, input$studyname32, input$studyname33, input$studyname34, input$studyname35,
                 input$studyname36, input$studyname37, input$studyname38, input$studyname39, input$studyname40,
                 input$studyname41, input$studyname42, input$studyname43, input$studyname44, input$studyname45,
                 input$studyname46, input$studyname47, input$studyname48, input$studyname49, input$studyname50,
                 input$studyname51, input$studyname52, input$studyname53, input$studyname54, input$studyname55,
                 input$studyname56, input$studyname57, input$studyname58, input$studyname59, input$studyname60,
                 input$studyname61, input$studyname62, input$studyname63, input$studyname64, input$studyname65,
                 input$studyname66, input$studyname67, input$studyname68, input$studyname69, input$studyname70,
                 input$studyname71, input$studyname72, input$studyname73, input$studyname74, input$studyname75,
                 input$studyname76, input$studyname77, input$studyname78, input$studyname79, input$studyname80,
                 input$studyname81, input$studyname82, input$studyname83, input$studyname84, input$studyname85,
                 input$studyname86, input$studyname87, input$studyname88, input$studyname89, input$studyname90,
                 input$studyname91, input$studyname92, input$studyname93, input$studyname94, input$studyname95,
                 input$studyname96, input$studyname97, input$studyname98, input$studyname99, input$studyname100)
    # Consider only those AEDs from studies that have not been deleted and are in the interactive reactivevalues list
    studies <- studies[inserted$val]
    
    
    # Number of patients who responded to the medication
    responded <- c(input$nresponded1, input$nresponded2, input$nresponded3, input$nresponded4, input$nresponded5, 
                   input$nresponded6, input$nresponded7, input$nresponded8, input$nresponded9, input$nresponded10, 
                   input$nresponded11, input$nresponded12, input$nresponded13, input$nresponded14, input$nresponded15,
                   input$nresponded16, input$nresponded17, input$nresponded18, input$nresponded19, input$nresponded20,
                   input$nresponded21, input$nresponded22, input$nresponded23, input$nresponded24, input$nresponded25,
                   input$nresponded26, input$nresponded27, input$nresponded28, input$nresponded29, input$nresponded30,
                   input$nresponded31, input$nresponded32, input$nresponded33, input$nresponded34, input$nresponded35,
                   input$nresponded36, input$nresponded37, input$nresponded38, input$nresponded39, input$nresponded40,
                   input$nresponded41, input$nresponded42, input$nresponded43, input$nresponded44, input$nresponded45,
                   input$nresponded46, input$nresponded47, input$nresponded48, input$nresponded49, input$nresponded50,
                   input$nresponded51, input$nresponded52, input$nresponded53, input$nresponded54, input$nresponded55,
                   input$nresponded56, input$nresponded57, input$nresponded58, input$nresponded59, input$nresponded60,
                   input$nresponded61, input$nresponded62, input$nresponded63, input$nresponded64, input$nresponded65,
                   input$nresponded66, input$nresponded67, input$nresponded68, input$nresponded69, input$nresponded70,
                   input$nresponded71, input$nresponded72, input$nresponded73, input$nresponded74, input$nresponded75,
                   input$nresponded76, input$nresponded77, input$nresponded78, input$nresponded79, input$nresponded80,
                   input$nresponded81, input$nresponded82, input$nresponded83, input$nresponded84, input$nresponded85,
                   input$nresponded86, input$nresponded87, input$nresponded88, input$nresponded89, input$nresponded90,
                   input$nresponded91, input$nresponded92, input$nresponded93, input$nresponded94, input$nresponded95,
                   input$nresponded96, input$nresponded97, input$nresponded98, input$nresponded99, input$nresponded100)
    # Consider only those AEDs from studies that have not been deleted and are in the interactive reactivevalues list
    responded <- responded[inserted$val]
    
    
    # Total number of patients in the study
    total <- c(input$ntotal1, input$ntotal2, input$ntotal3, input$ntotal4, input$ntotal5, 
               input$ntotal6, input$ntotal7, input$ntotal8, input$ntotal9, input$ntotal10, 
               input$ntotal11, input$ntotal12, input$ntotal13, input$ntotal14, input$ntotal15,
               input$ntotal16, input$ntotal17, input$ntotal18, input$ntotal19, input$ntotal20,
               input$ntotal21, input$ntotal22, input$ntotal23, input$ntotal24, input$ntotal25,
               input$ntotal26, input$ntotal27, input$ntotal28, input$ntotal29, input$ntotal30,
               input$ntotal31, input$ntotal32, input$ntotal33, input$ntotal34, input$ntotal35,
               input$ntotal36, input$ntotal37, input$ntotal38, input$ntotal39, input$ntotal40,
               input$ntotal41, input$ntotal42, input$ntotal43, input$ntotal44, input$ntotal45,
               input$ntotal46, input$ntotal47, input$ntotal48, input$ntotal49, input$ntotal50,
               input$ntotal51, input$ntotal52, input$ntotal53, input$ntotal54, input$ntotal55,
               input$ntotal56, input$ntotal57, input$ntotal58, input$ntotal59, input$ntotal60,
               input$ntotal61, input$ntotal62, input$ntotal63, input$ntotal64, input$ntotal65,
               input$ntotal66, input$ntotal67, input$ntotal68, input$ntotal69, input$ntotal70,
               input$ntotal71, input$ntotal72, input$ntotal73, input$ntotal74, input$ntotal75,
               input$ntotal76, input$ntotal77, input$ntotal78, input$ntotal79, input$ntotal80,
               input$ntotal81, input$ntotal82, input$ntotal83, input$ntotal84, input$ntotal85,
               input$ntotal86, input$ntotal87, input$ntotal88, input$ntotal89, input$ntotal90,
               input$ntotal91, input$ntotal92, input$ntotal93, input$ntotal94, input$ntotal95,
               input$ntotal96, input$ntotal97, input$ntotal98, input$ntotal99, input$ntotal100)
    # Consider only those AEDs from studies that have not been deleted and are in the interactive reactivevalues list
    total <- total[inserted$val]
    

    # Collect the data for the metaanalysis in a metaprop object    
    dataformetaanalysis <- metaprop(
      # Patients who responded
      event = as.numeric(responded),
      # Total number of patients in the study
      n = as.numeric(total),
      # Study names
      studlab = studies,
      # Classification variable (type of AED)
      byvar = AEDs
    )
    
    # Create the forest plot
    forestplot <- forest(dataformetaanalysis, comb.fixed = FALSE, lty.random = 2, lty.fixed = 0, 
                    xlim = c(0, 1), lwd = 1.75, col.study = "navy", col.square = "gray", col.square.lines = "navy",
                    col.diamond.random = "red", col.diamond.lines.random = "red",
                    print.I2 = TRUE, print.I2.ci = TRUE, print.tau2 = FALSE, print.pval.Q = FALSE,
                    fontsize = 16, fs.heading = 20, fs.hetstat = 16, fs.axis = 16, fs.test.overall = 16,
                    fs.random = 20, fs.smlab = 20, ff.study.labels =  "bold", 
                    ff.axis = "bold", squaresize = 1.2, 
                    backtransf = TRUE, test.overall.random = TRUE, 
                    leftcols = c("studlab", "effect", "ci"), rightcols = FALSE,
                    just = "right", digits = 2, print.byvar = FALSE, col.by = "blue", overall = FALSE) 
    
    # Render the forest plot
    forestplot
  })
  
  
  
}
##########################################################################################################################
##########################################################END OF SERVER################################################
##########################################################################################################################





##########################################################################################################################
##########################################################RUN THE APP WITH UI AND SERVER###############################################
##########################################################################################################################
#### Run the app
shinyApp(ui = ui, server = server)