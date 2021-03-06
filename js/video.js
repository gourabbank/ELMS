var video = document.getElementById("videoarea");

var timeStarted = -1;
var timePlayed = 0;
var duration = 0;
var c = 0;
console.log(countvideo);
// If video metadata is laoded get duration
if(video.readyState > 0)
  getDuration.call(video);
//If metadata not loaded, use event to get it
else
{
  video.addEventListener('loadedmetadata', getDuration);
}
// remember time user started the video
function videoStartedPlaying() {
  timeStarted = new Date().getTime()/1000;
}
function videoStoppedPlaying(event) {
  // Start time less then zero means stop event was fired vidout start event
  if(timeStarted>0) {
    var playedFor = new Date().getTime()/1000 - timeStarted;
    timeStarted = -1;
    // add the new number of seconds played
    timePlayed+=playedFor;
  }
  document.getElementById("played").innerHTML = Math.round(timePlayed)+"";
  // Count as complete only if end of video was reached
  if(timePlayed>=duration && event.type=="ended") 
  {
    document.getElementById("status").className="complete";
    c=c+1;
    var comp = document.getElementById("status"); 
    console.log(comp.className);
    
    if(comp.className==="complete")
    {
      var certi=document.getElementById("certi")
      console.log(certi);
      if(c>=countvideo)
      {
        if (certi.style.display === "none") 
        {
          certi.style.display = "block";
        }
      } 
    } 
  }
}

function getDuration() {
  duration = video.duration;
  document.getElementById("duration").appendChild(new Text(Math.round(duration)+""));
  console.log("Duration: ", duration);
}

video.addEventListener("play", videoStartedPlaying);
video.addEventListener("playing", videoStartedPlaying);

video.addEventListener("ended", videoStoppedPlaying);
video.addEventListener("pause", videoStoppedPlaying);