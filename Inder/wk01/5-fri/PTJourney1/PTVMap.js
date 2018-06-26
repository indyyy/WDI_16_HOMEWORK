


var PTVNetwork = []

var trainLine0 = {
    stationName:['a', 'b', 'c', 'd', 'e', 'f'],
    junction: ['d']};
    

var trainLine1 = {
    stationName:['g', 'd', 'k', 'l', 'm'],
    junction: ['d']};

var trainLine2 = {
    stationName:['p', 'r', 't', 'd', 'v'],
    junction: ['d']}

var trainLine3 = {
    stationName:['w', 'x', 'p', 'u', 'q', 'd', 'g', 'h'],
    junction: ['d']}

PTVNetwork.push(trainLine0)
PTVNetwork.push(trainLine1)
PTVNetwork.push(trainLine2)
PTVNetwork.push(trainLine3)


function getStationOnLineNum(station) { 
    var numberOfLines=PTVNetwork.length
    for(i=0;i<numberOfLines;i++) {
        if (PTVNetwork[i].stationName.indexOf(station) != -1) {
            return i
        }
    }
}

function getStationNum(station) { 
    var numberOfLines=PTVNetwork.length
    for(i=0;i<numberOfLines;i++) {
        if (PTVNetwork[i].stationName.indexOf(station) != -1) {
            return PTVNetwork[i].stationName.indexOf(station)
        }
    }
}

var origin='a'
var destination='l'

var originLine = getStationOnLineNum(origin)
var originStationNum = getStationNum(origin)

var destinationStationNum = getStationNum(destination)
var destinationLine = getStationOnLineNum(destination)

if (originLine == destinationLine) { 
    if (originStationNum < destinationStationNum) {  
        console.log(PTVNetwork[originLine].stationName.slice(originStationNum,destinationStationNum+1))
    }
    else {console.log(PTVNetwork[originLine].stationName.slice(destinationStationNum,originStationNum+1).reverse())

   }
 }


 else if (PTVNetwork[originLine].junction == PTVNetwork[destinationLine].junction) 
    {   
        var originJunctionNum=getStationNum(PTVNetwork[originLine].junction)
        var destinationJunctionNum=getStationNum(PTVNetwork[destinationLine].junction)
        
        if (originStationNum < originJunctionNum) {  
            console.log(PTVNetwork[originLine].stationName.slice(originStationNum,originJunctionNum+1))
        }
        else {console.log(PTVNetwork[originLine].stationName.slice(originJunctionNum,originStationNum+1).reverse())

        }


       if (destinationJunctionNum > destinationStationNum) {
            console.log(PTVNetwork[destinationLine].stationName.slice(destinationStationNum,destinationJunctionNum+1))
        }
        else {console.log(PTVNetwork[destinationLine].stationName.slice(destinationJunctionNum,destinationStationNum+1).reverse())

        }


       }


 






