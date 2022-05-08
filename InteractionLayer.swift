import Igis
import Scenes

  /*
     This class is responsible for the interaction Layer.
     Internally, it maintains the RenderableEntities for this layer.
   */

class InteractionLayer : Layer, KeyDownHandler {

    //let Bunnyimage = Bunny(rect:Rect(topLeft:Point(x:10, y:100), size:Size(width:100, height:100))) 
    var Bunnyimage = Bunny(bunnypoint: Point(x: 10, y:100), bunnysize: Size(width:100, height:100))
    var movePosition = 0
    var movePositionhorizontal = 0
    var Endimage = End(endpoint: Point(x:400, y:100), endsize: Size(width:1000, height:700))
    let coin1 = Coin(rect:Rect(size:Size(width:50, height:50)))
    let coin2 = Coin(rect:Rect(size:Size(width:50, height:50)))   
    let coin3 = Coin(rect:Rect(size:Size(width:50, height:50)))     
    
    init() {
          // Using a meaningful name can be helpful for debugging
          super.init(name:"Interaction")

          // We insert our RenderableEntities in the constructor
          insert(entity: Bunnyimage , at: .front)

          insert(entity: coin1, at: .front)
          insert(entity: coin2, at: .front)
          insert(entity: coin3, at: .front)    
    }

      public override func preSetup(canvasSize: Size, canvas: Canvas)
      {
          //Bunnyimage.move(to:Point(x: 10, y: canvasSize.center.y))

          movePosition = 100
          movePositionhorizontal = 10
          
          dispatcher.registerKeyDownHandler(handler: self)

          coin1.move(to:Point(x: 550, y: 470))
          coin2.move(to:Point(x: 1260, y: 150))
          coin3.move(to:Point(x: 1400, y: 550))    
      }



      
      override func postTeardown() {
          dispatcher.unregisterKeyDownHandler(handler: self)
      }
      
      public func onKeyDown(key:String, code:String, ctrlKey:Bool, shiftKey:Bool, altKey:Bool, metaKey:Bool)
      {
          if key == "w"
          {          
              if movePosition < 100 && movePositionhorizontal > 0  && movePositionhorizontal < 900 || movePosition < 360 && movePosition > 290 && movePositionhorizontal > 330  && movePositionhorizontal < 590 || movePosition < 280 && movePositionhorizontal > 810  && movePositionhorizontal < 1110 || movePosition < 70 && movePositionhorizontal > 1010  && movePositionhorizontal < 1410 || movePosition < 270 && movePositionhorizontal > 1300  && movePositionhorizontal < 1520
              {
                  
              }
              else
              {
                  movePosition -= 20 
                  Bunnyimage.move(to:Point(x: movePositionhorizontal, y: movePosition))
              }
          }

          if key == "s"
          { 
              print ("y")
              print (movePosition)

              print (movePositionhorizontal)

              if movePosition > 200 && movePosition < 230  && movePositionhorizontal > -16  && movePositionhorizontal < 650 ||  movePosition > 500 && movePositionhorizontal > 330  && movePositionhorizontal < 810 || movePosition > 420 && movePositionhorizontal > 810  && movePositionhorizontal < 1290 ||  movePosition > 660 && movePositionhorizontal > 1270  && movePositionhorizontal < 1490
              {
                  
              }
              else
              {
              movePosition += 20
              Bunnyimage.move(to:Point(x:  movePositionhorizontal, y: movePosition))    
              }
          }

          if key == "a"
          {

              if movePositionhorizontal < 690 && movePosition > 220 && movePosition < 320 || movePositionhorizontal < 330 && movePosition > 300 && movePosition < 560 || movePositionhorizontal < 0 && movePosition > 0 && movePosition < 850 || movePositionhorizontal < 1130 && movePosition > 0 && movePosition < 220 || movePositionhorizontal < 1310 &&  movePositionhorizontal > 1210 && movePosition > 380 && movePosition < 1510 
              {
                 
              }
              else
              {
              movePositionhorizontal -= 20
              Bunnyimage.move(to:Point(x: movePositionhorizontal, y: movePosition))    
              }
          }

          if key == "d"
          {
              if movePositionhorizontal > 750 && movePositionhorizontal < 810  && movePosition > 70 && movePosition < 230 || movePositionhorizontal > 810 && movePositionhorizontal < 900 && movePosition > 420 && movePosition < 530 || movePositionhorizontal > 1270 && movePosition > 0 && movePosition < 250 || movePositionhorizontal > 1490 && movePosition > 200 && movePosition < 720
              {
                 
              }
              else
              {
              movePositionhorizontal += 20             
              Bunnyimage.move(to:Point(x: movePositionhorizontal, y: movePosition))    
              }
          }

          if movePosition > 620
          {
            
              insert(entity: Endimage , at: .front)
          }

          if movePositionhorizontal < 550 && movePosition > 300
          {
              coin1.move(to:Point(x: 930, y: 570))
          }


          if movePositionhorizontal > 1200 && movePosition > 100 && movePosition < 200
          {
              coin2.move(to:Point(x: 990, y: 570))
          }
          
          if movePositionhorizontal > 1300 && movePosition > 500 
          {
              coin3.move(to:Point(x: 1050, y: 570))
          }
          
          
      }
  }
