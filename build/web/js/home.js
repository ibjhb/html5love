$(function(){
    Cufon.replace('#menu > li > a', {
        textShadow: '#fff 0 1px 1px',
        letterSpacing: '0.2px',
        fontSize: '20px'
    });
    Cufon.replace('#footer h4', {
        textShadow: '#fff 0 1px 1px',
        letterSpacing: '0.8px'
    });
    Cufon.replace('#splash h1', {
        textShadow: '#d7d7d7 0 2px 1px',
        letterSpacing: '0.8px'
    });
    Cufon.replace('#services h3, #footer h4', {
        textShadow: '#fff 0 1px 1px',
        letterSpacing: '0.8px'
    });
    Cufon.replace('h2:not([class="nocufon"]), h3, h4, h5, h6', {
        letterSpacing: '0.8px',
        hover: true
    });
    
    Cufon.now();
    var twitter = 'ibjhb';
    if (typeof twitter !== "undefined") {
        var username = twitter; // set user name
        var format = 'json'; // set format, you really don't have an option on this one
        var url = 'http://api.twitter.com/1/statuses/user_timeline/' + username + '.' + format + '?callback=?'; // make the url
        $.getJSON(url, function(tweet){ // get the tweets
            $("#twitter a").html('"' + tweet[0].text + '"'); // get the first tweet in the response and place it inside the div
            $("#twitter span span").html(tweet[0].created_at.slice(0, 16)); // get the first tweet in the response and place it inside the div
        });
    }
	
    $("#menu").superfish({
        animation: {
            opacity: 'show',
            height: 'show'
        },
        speed: 400,
        delay: 100,
        dropShadows: false,
        autoArrows: false,
        disableHI: true
    });  
});
