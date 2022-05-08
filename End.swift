import Foundation
import Igis

import Scenes

class End: RenderableEntity {

    var end : Image
    var endtopLeft : Point
    
    init(endpoint: Point, endsize: Size)
    {
        guard let endURL = URL(string:"https://pbs.twimg.com/media/FSLn10bWYAEeB9D?format=jpg&name=small") else {
            fatalError("Failed to create URL for bunny")
        }
        end = Image(sourceURL:endURL)
        end.renderMode = .destinationRect(Rect(topLeft:Point(x: endpoint.x, y: endpoint.y), size: Size(width: endsize.width, height: endsize.height)))
        endtopLeft = Point(x: endpoint.x, y: endpoint.y)
        
        // rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        super.init(name: "End")
    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.setup(end)
    }

    override func render(canvas:Canvas) {
        if end.isReady {
            //            bunny.renderMode = .destinationRect(Rect(topLeft:Point(x:10, y:100), size:Size(width:100, height:100)))
//            let clearRect = Rect(topLeft:Point(x:0, y:0), size:Size(width:2000, height:1000))
  //          let clearRectangle = Rectangle(rect:clearRect, fillMode:.clear) 
    //        canvas.render(clearRectangle)            
            canvas.render(end)
        }
    }

    public func move(to point: Point)
    {

        endtopLeft = Point(x: point.x, y: point.y)
        end.renderMode = .destinationRect(Rect(topLeft:Point(x: point.x, y: point.y), size:Size(width:100, height:100)))
       
    }
}
