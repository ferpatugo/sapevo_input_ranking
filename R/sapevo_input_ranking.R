sapevo_input_ranking=function(){
  
  
  projeto = readline("Qual o nome do projeto? ")  
  
  decisores = readline("Quem sao os decisores? ")
  decisores = unlist(strsplit(decisores, ","))
  
  alternativas = readline("Quais sao as alternativas? ")
  alternativas = unlist(strsplit(alternativas, ","))
  
  criterios = readline("Quais são os critérios do projeto? ")
  criterios = unlist(strsplit(criterios, ","))
  
  numero_decisores=length(unlist(strsplit(decisores, ",")))
  numero_alternativas=length(unlist(strsplit(alternativas, ",")))
  
  
  criterios = unlist(strsplit(criterios, ","))
  numero_criterios=length(unlist(strsplit(criterios, ",")))
  
  vetor_final=list()
  vetor_final2=list()
  
  for (i in 1:numero_decisores) {
    
    for (j in 1:numero_criterios) {
      
      if (numero_alternativas==2) {
        
        nota_decisor1_comparacao1 = readline(as.character(cat("Avaliar alternativas:",decisores[i],criterios[j],"\n\n",alternativas[1],"vs",alternativas[2],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao1=as.numeric(nota_decisor1_comparacao1)
        
        vetor_final[[i]]=c(0,nota_decisor1_comparacao1,-nota_decisor1_comparacao1,0)
        
        assign("vetor_final",vetor_final,envir = .GlobalEnv)
        assign("projeto",projeto,envir = .GlobalEnv)
        assign("alternativas",alternativas,envir = .GlobalEnv)
        assign("criterios",criterios,envir = .GlobalEnv)
        
        cat("O nome do seu projeto ?:",projeto,"\n")
        cat("Aternativas do seu projeto:",alternativas,"\n")
        cat("Criterios do seu projeto:",criterios,"\n")
        cat("O input para a funcao sapevo_pesos é o vetor:\n")
        print(vetor_final)
        
      } else if (numero_alternativas==3) {
        
        nota_decisor1_comparacao1 = readline(as.character(cat("Avaliar alternativas:",decisores[i],criterios[j],"\n\n",alternativas[1],"vs",alternativas[2],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao1=as.numeric(nota_decisor1_comparacao1)
        
        
        nota_decisor1_comparacao2 = readline(as.character(cat("Avaliar alternativas:",decisores[i],criterios[j],"\n\n",alternativas[1],"vs",alternativas[3],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao2=as.numeric(nota_decisor1_comparacao2)
        
        
        nota_decisor1_comparacao3 = readline(as.character(cat("Avaliar alternativas:",decisores[i],criterios[j],"\n\n",alternativas[2],"vs",alternativas[3],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao3=as.numeric(nota_decisor1_comparacao3)
        
        vetor_final= list(vetor_final,c(0,nota_decisor1_comparacao1,nota_decisor1_comparacao2,
                                        -nota_decisor1_comparacao1,0,nota_decisor1_comparacao3,
                                        -nota_decisor1_comparacao2,-nota_decisor1_comparacao3,0))
        
        
        assign("vetor_final",vetor_final,envir = .GlobalEnv)
        assign("projeto",projeto,envir = .GlobalEnv)
        assign("alternativas",alternativas,envir = .GlobalEnv)
        assign("criterios",criterios,envir = .GlobalEnv)
        
        cat("O nome do seu projeto ?:",projeto,"\n")
        cat("Aternativas do seu projeto:",alternativas,"\n")
        cat("Criterios do seu projeto:",criterios,"\n")
        cat("O input para a funcao sapevo_pesos é o vetor:\n")
        print(vetor_final)
        
      } else if (numero_alternativas==4) {
        
        nota_decisor1_comparacao1 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[1],"vs",alternativas[2],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao1=as.numeric(nota_decisor1_comparacao1)
        
        
        nota_decisor1_comparacao2 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[1],"vs",alternativas[3],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao2=as.numeric(nota_decisor1_comparacao2)
        
        
        nota_decisor1_comparacao3 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[1],"vs",alternativas[4],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao3=as.numeric(nota_decisor1_comparacao3)
        
        
        nota_decisor1_comparacao4 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[2],"vs",alternativas[3],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao4=as.numeric(nota_decisor1_comparacao3)
        
        
        nota_decisor1_comparacao5 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[2],"vs",alternativas[4],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao5=as.numeric(nota_decisor1_comparacao3)
        
        nota_decisor1_comparacao6 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[3],"vs",alternativas[4],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao6 = as.numeric(nota_decisor1_comparacao3)
        
        nota_decisor1_comparacao7 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[4],"vs",alternativas[4],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao7 = as.numeric(nota_decisor1_comparacao3)
        
        
        vetor_final[[i]]=c(0,nota_decisor1_comparacao1,nota_decisor1_comparacao2,nota_decisor1_comparacao3,
                           -nota_decisor1_comparacao1,0,nota_decisor1_comparacao4,nota_decisor1_comparacao5,
                           -nota_decisor1_comparacao2,-nota_decisor1_comparacao4,0,nota_decisor1_comparacao6,
                           -nota_decisor1_comparacao3,-nota_decisor1_comparacao5, -nota_decisor1_comparacao7,0)
        
        assign("vetor_final",vetor_final,envir = .GlobalEnv)
        assign("projeto",projeto,envir = .GlobalEnv)
        assign("alternativas",alternativas,envir = .GlobalEnv)
        assign("criterios",criterios,envir = .GlobalEnv)
        
        cat("O nome do seu projeto ?:",projeto,"\n")
        cat("Aternativas do seu projeto:",alternativas,"\n")
        cat("Criterios do seu projeto:",criterios,"\n")
        cat("O input para a funcao sapevo_pesos é o vetor:\n")
        print(vetor_final)
        
      } else if (numero_alternativas==5) {
        
        
        nota_decisor1_comparacao1 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[1],"vs",alternativas[2],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        
        nota_decisor1_comparacao1=as.numeric(nota_decisor1_comparacao1)
        
        
        nota_decisor1_comparacao2 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[1],"vs",alternativas[3],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        
        nota_decisor1_comparacao2=as.numeric(nota_decisor1_comparacao2)
        
        
        nota_decisor1_comparacao3 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[1],"vs",alternativas[4],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao3=as.numeric(nota_decisor1_comparacao3)
        
        
        nota_decisor1_comparacao4 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[1],"vs",alternativas[5],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao4=as.numeric(nota_decisor1_comparacao3)
        
        
        nota_decisor1_comparacao5 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[2],"vs",alternativas[3],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao5=as.numeric(nota_decisor1_comparacao3)
        
        
        nota_decisor1_comparacao6 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[2],"vs",alternativas[4],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao6=as.numeric(nota_decisor1_comparacao3)
        
        
        nota_decisor1_comparacao7 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[2],"vs",alternativas[5],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao7 = as.numeric(nota_decisor1_comparacao7)
        
        
        nota_decisor1_comparacao8 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[3],"vs",alternativas[4],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao8 = as.numeric(nota_decisor1_comparacao3)
        
        
        nota_decisor1_comparacao9 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[3],"vs",alternativas[5],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao9 = as.numeric(nota_decisor1_comparacao3)
        
        
        nota_decisor1_comparacao10 = readline(as.character(cat("Avaliar alternativas:",decisores[i],"\n\n",alternativas[4],"vs",alternativas[5],"\n\n","Diga uma Nota comparativa : Abolutamente pior (-3), Muito pior (-2), Pior (-1), Equivalente (0), Melhor (1), Muito melhor (2), Absolutamente melhor (3)")))
        
        nota_decisor1_comparacao10 = as.numeric(nota_decisor1_comparacao3)
        
        
        vetor_final[[i]]=c(0,nota_decisor1_comparacao1,nota_decisor1_comparacao2,nota_decisor1_comparacao3,nota_decisor1_comparacao4,
                           -nota_decisor1_comparacao1,0,nota_decisor1_comparacao5,nota_decisor1_comparacao6,nota_decisor1_comparacao7,
                           -nota_decisor1_comparacao2,-nota_decisor1_comparacao5,0,nota_decisor1_comparacao8,nota_decisor1_comparacao9 ,
                           -nota_decisor1_comparacao3,-nota_decisor1_comparacao6, -nota_decisor1_comparacao7 ,0,nota_decisor1_comparacao10,
                           -nota_decisor1_comparacao4,-nota_decisor1_comparacao7,-nota_decisor1_comparacao9,-nota_decisor1_comparacao10,0)
        
        
        assign("vetor_final",vetor_final,envir = .GlobalEnv)
        assign("projeto",projeto,envir = .GlobalEnv)
        assign("alternativas",alternativas,envir = .GlobalEnv)
        assign("criterios",criterios,envir = .GlobalEnv)
        
        cat("O nome do seu projeto ?:",projeto,"\n")
        cat("Aternativas do seu projeto:",alternativas,"\n")
        cat("Criterios do seu projeto:",criterios,"\n")
        cat("O input para a funcao sapevo_pesos é o vetor:\n")
        print(vetor_final)
        
      } else {
        
        cat("")
        
      }
    }     
  }     
}

