import Foundation
import Igis

import Scenes

class Bunny: RenderableEntity {

    var bunny : Image
    var bunnytopLeft : Point
    
    init(bunnypoint: Point, bunnysize: Size)
    {
        guard let bunnyURL = URL(string:"https://cdn.clipartsfree.net/vector/medium/1677-bunny-art-design.png") else {
            fatalError("Failed to create URL for bunny")
        }
        bunny = Image(sourceURL:bunnyURL)
        bunny.renderMode = .destinationRect(Rect(topLeft:Point(x: bunnypoint.x, y: bunnypoint.y), size: Size(width: bunnysize.width, height: bunnysize.height)))
        bunnytopLeft = Point(x: bunnypoint.x, y: bunnypoint.y)
        
        // rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        super.init(name: "Bunny")
    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.setup(bunny)
    }

    override func render(canvas:Canvas) {
        if bunny.isReady {
            //            bunny.renderMode = .destinationRect(Rect(topLeft:Point(x:10, y:100), size:Size(width:100, height:100)))
//            let clearRect = Rect(topLeft:Point(x:0, y:0), size:Size(width:2000, height:1000))
  //          let clearRectangle = Rectangle(rect:clearRect, fillMode:.clear) 
    //        canvas.render(clearRectangle)            
            canvas.render(bunny)
        }
    }

    public func move(to point: Point)
    {

        bunnytopLeft = Point(x: point.x, y: point.y)
        bunny.renderMode = .destinationRect(Rect(topLeft:Point(x: point.x, y: point.y), size:Size(width:100, height:100)))
       
    }
}
