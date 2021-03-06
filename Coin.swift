import Scenes
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Coin: RenderableEntity {
    var rectangle: Rectangle
    
    init(rect: Rect) {

        rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        
          // Using a meaningful name can be helpful for debugging
          super.init(name:"Coin")
      }


      override func render(canvas:Canvas)
      {

     //let ellipse = Ellipse(center:Point(x:x, y:y), radiusX:120, radiusY:55)
          let strokeStyle = StrokeStyle(color:Color(.goldenrod))
          let fillStyle = FillStyle(color:Color(.gold))
          let lineWidth = LineWidth(width:2)
          canvas.render(strokeStyle, fillStyle, lineWidth, rectangle)
          
      }

      func move(to point:Point) {
          rectangle.rect.topLeft = point
      }
}
