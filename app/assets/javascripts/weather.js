const searchWeather = function(city){
  //console.log('Searching Open Weather Map for', city);
  const weatherURL = 'https://api.openweathermap.org/data/2.5/weather?q='+city+'&units=metric'+'&APPID=ccc359d3e27bfd80e0f874a48fad69f0';

  $.ajax(weatherURL, {
    type: 'GET',
    dataType: 'jsonp'
  }).done(showWeather)
};

const showWeather = function(results){
  //console.log(results);
  $('#weather').append('<h2>Current weather details for ' + results.name + '</h2>');
  // $('#weather').append('<p><strong>Weather</strong>: ' + results.weather[0].main + '</p>');
  $('#weather').append('<p><strong>Current Weather</strong>: ' + results.weather[0].description + '</p>');
  $('#weather').append('<p><strong>Average Temperature</strong>: ' + results.main.temp + '&#8451;' + '</p>');
  $('#weather').append('<p><strong>Minimum Temperature</strong>: ' + results.main.temp_min + '&#8451;' + '</p>');
  $('#weather').append('<p><strong>Maximum Temperature</strong>: ' + results.main.temp_max + '&#8451;' + '</p>');
  $('#weather').append('<p><strong>Humidity</strong>: ' + results.main.humidity + '</p>');
};

$(document).ready(function(){
  $('#searchWeather').on('click', function(event){
    event.preventDefault();
    let city = $('#city').html();
    //console.log(city);
    $('#weather').empty();
    searchWeather(city);
    $("#weather").toggleClass("show");
  });
});
