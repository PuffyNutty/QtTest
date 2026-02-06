var maxColumn = 10;
var maxRow = 15;
var maxIndex = maxColumn * maxRow;
var board = new Array(maxIndex);
var component;


function index(column, row)
{
    return column + (row * maxColumn);
}


function deleteAllBlocks()
{
    for (var i = 0; i < maxIndex; i++) {
        if (board[i] != null) {
            board[i].destroy();
        }
    }
}


function createBlock(column, row)
{
    if (component == null) {
        component = Qt.createComponent("Block.qml");
    }

    if (component.status == Component.Ready) {
        var dynamicObject = component.createObject(gameCanvas);
        if (dynamicObject == null) {
            console.log("Error when creating block");
            console.log(component.errorString());
            return false;
        }
        dynamicObject.x = column * gameCanvas.blockSize;
        dynamicObject.y = row * gameCanvas.blockSize;
        dynamicObject.width = gameCanvas.blockSize;
        dynamicObject.height = gameCanvas.blockSize;
        board[index(column, row)] = dynamicObject;
    } else {
        console.log("Error loading block component");
        console.log(component.errorString());
        return false;
    }
}


function startNewGame()
{
    deleteAllBlocks();

    maxColumn = Math.floor(gameCanvas.width / gameCanvas.blockSize);
    maxRow = Math.floor(gameCanvas.height / gameCanvas.blockSize);
    maxIndex = maxRow * maxColumn;

    board = new Array(maxIndex);
    for (var column = 0; column < maxColumn; column++) {
        for (var row = 0; row < maxRow; row++) {
            board[index(column, row)] = null;
            createBlock(column, row);
        }
    }
}


function handleClick(xPos, yPos)
{
    var column = Math.floor(xPos / gameCanvas.blockSize);
    var row = Math.floor(yPos / gameCanvas.blockSize);
    if (column >= maxRow || column < 0 || row >= maxRow || row < 0) {
        return;
    }
    if (board[index(column, row)] == null) {
        return;
    }
}
