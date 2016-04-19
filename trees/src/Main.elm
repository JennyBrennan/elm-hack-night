import Html exposing (div, h1, p, text)
import Tree
import TreeView
import Debug


myTree : Tree.Tree number
myTree =
    Tree.Node 5
      (Tree.Node 10
        Tree.empty
        (Tree.Node 12 Tree.empty Tree.empty))
      (Tree.Node 16
        (Tree.Node 10 Tree.empty Tree.empty)
        (Tree.Node 18 Tree.empty Tree.empty))

sumNumber : number
sumNumber =
  Tree.sum myTree

flattenTree : List number
flattenTree =
  Tree.flatten myTree

main : Html.Html
main =
   div [ ]
      [ h1 [] [ text "Tree challenges"]
      , TreeView.draw 800 myTree
      , p [] [ text ("Sum of elements in tree: " ++ toString sumNumber) ]
      , p [] [ text ("Flattened list of tree: " ++ toString flattenTree) ]
      ]
