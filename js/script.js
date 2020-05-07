const cats = document.querySelector('.cats_bar')
const dogs = document.querySelector('.dogs_bar')
const parrots = document.querySelector('.parrots_bar')

// получение максимального значения

function get_max_value(json){
  let max = 0
  for (let [key, value] of Object.entries(json)){
    if (value>max){
      max=value;
    }
  }
  return max

}

// Считаем процент и округаяем 

function get_percent(value,max_value) { 
  
  return Math.round(value/max_value*100)

 }

const header = new Headers({
	'Access-Control-Allow-Credentials': true, 
  'Access-Control-Allow-Origin': '*'
})

const ES = new EventSource('https://sf-pyw.mosyag.in/sse/vote/stats', header);

ES.onopen = event => {
  // console.log(event)
}

ES.onerror = error => {
  ES.readyState ? console.error("⛔ EventSource failed: ", error) : null;
};

ES.onmessage = message => {
  
  json = JSON.parse(message.data);
  const max_value =  get_max_value(json);
    // меняем данные для котов
    cats.style.cssText = `width: ${get_percent(json['cats'],max_value)}%;`
    cats.textContent = `${json['cats']}`
     // меняем данные для собак
    dogs.style.cssText = `width: ${get_percent(json['dogs'],max_value)}%;`
    dogs.textContent = `${json['dogs']}`
      // меняем данные для попугаев
    parrots.style.cssText = `width: ${get_percent(json['parrots'],max_value)}%;`
    parrots.textContent = `${json['parrots']}`
}
