var alphabet = 'abcdefghijklmnopqrstuvwxyz'.split();

var width = 960,
    height = 500;

var svg = d3.select("body").append("svg")
         .attr("width", width)
         .attr("height", height)
         .append("g")
         .attr("transform", "translate(32," + height/2 + ")");

// make an update function
function update(data) {

  // data join
  var text = svg.selectAll(text).data(data);

  //update
  text.attr("class", "update");

  //enter
  text.enter().append("text")
      .attr("class", "enter")
      .attr("x", function(d, i) { return i * 32 }) // cuz it's a monospaced font
      .attr("dy", ".35em");

  //enter + update
  text.text(function(d) {return d;});

  //exit
  text.exit().remove();

}

update(alphabet);

setInterval(function() {
  update(shuffle(alphabet));
}, 1500);

function shuffle(array) {
  return array[0];
}