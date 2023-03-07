var options = {

  valueNames: [
                {
                  name: 'url', attr: 'href'
                },
                'name',
                'notes',
                'tags'
              ],

              item: '<li><a target=”_blank href="" class="url name"></a><br><span class="notes"></span><span class="brackets"> [</span><span class="tags"></span><span class="brackets">]</span></li>',
};


var values = (function() {

  toolslist = null;

  $.ajax({

    'async': false,
    'global': false,
    'url': "content/toolslist.json",
    'dataType': 'json',
    'success': function(data) { toolslist = data; }
  });

  return toolslist;

})();


var toolslist = new List('toolslist', options, values);
