# -*- coding: utf-8 -*-
"""

@author: CollegeBoreal
"""

def exo_03(tuple):
  # Ajouter le code permettant d'inverser la tuple
  # sous la forme 'Decembre' 9 2020
  x=("decembre",9,2020)
  b,a,c=x
  return (b, a , c)

def main():
  print( exo_03( ( 9, 'Decembre' , 2020 ) ) )

if __name__== "__main__":
  main()
