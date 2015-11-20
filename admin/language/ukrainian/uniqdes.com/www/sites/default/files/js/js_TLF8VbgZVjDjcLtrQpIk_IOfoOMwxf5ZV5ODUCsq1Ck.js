Drupal.locale = { 'pluralFormula': function ($n) { return Number((((($n%10)==1)&&(($n%100)!=11))?(0):((((($n%10)>=2)&&(($n%10)<=4))&&((($n%100)<10)||(($n%100)>=20)))?(1):2))); }, 'strings': {"":{"Enabled":"\u0412\u043a\u043b\u044e\u0447\u0435\u043d\u043e","Select all rows in this table":"\u041e\u0442\u043c\u0435\u0442\u0438\u0442\u044c \u0432\u0441\u0435 \u0441\u0442\u0440\u043e\u043a\u0438 \u0442\u0430\u0431\u043b\u0438\u0446\u044b","Deselect all rows in this table":"\u0421\u043d\u044f\u0442\u044c \u043e\u0442\u043c\u0435\u0442\u043a\u0443 \u0441\u043e \u0432\u0441\u0435\u0445 \u043a\u043e\u043b\u043e\u043d\u043e\u043a \u0442\u0430\u0431\u043b\u0438\u0446\u044b","Configure":"\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438","none":"\u043d\u0435\u0442","Submit":"\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c","Disabled":"\u041e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u043e","Cancel":"\u041e\u0442\u043c\u0435\u043d\u0438\u0442\u044c","Not published":"\u041d\u0435 \u043e\u043f\u0443\u0431\u043b\u0438\u043a\u043e\u0432\u0430\u043d\u043e","OK":"\u0414\u0430","Only files with the following extensions are allowed: %files-allowed.":"\u041f\u0440\u0438\u043a\u0440\u0435\u043f\u043b\u044f\u0442\u044c \u043c\u043e\u0436\u043d\u043e \u0442\u043e\u043b\u044c\u043a\u043e \u0444\u0430\u0439\u043b\u044b \u0441 \u0440\u0430\u0441\u0448\u0438\u0440\u0435\u043d\u0438\u044f\u043c\u0438: %files-allowed.","Please wait...":"\u041f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430, \u043f\u043e\u0434\u043e\u0436\u0434\u0438\u0442\u0435...","Edit":"\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c","Upload":"\u0417\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c","Done":"\u0413\u043e\u0442\u043e\u0432\u043e","Show":"\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c","Changes made in this table will not be saved until the form is submitted.":"\u0421\u0434\u0435\u043b\u0430\u043d\u043d\u044b\u0435 \u0432 \u0441\u043f\u0438\u0441\u043a\u0435 \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u044f \u043d\u0435 \u0432\u0441\u0442\u0443\u043f\u044f\u0442 \u0432 \u0441\u0438\u043b\u0443, \u043f\u043e\u043a\u0430 \u0432\u044b \u043d\u0435 \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u0435 \u0438\u0445.","The changes to these blocks will not be saved until the \u003Cem\u003ESave blocks\u003C\/em\u003E button is clicked.":"\u0418\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u044f, \u0441\u0434\u0435\u043b\u0430\u043d\u043d\u044b\u0435 \u0432 \u0431\u043b\u043e\u043a\u0430\u0445 \u043d\u0435 \u0432\u0441\u0442\u0443\u043f\u044f\u0442 \u0432 \u0441\u0438\u043b\u0443 \u043f\u043e\u043a\u0430 \u0432\u044b \u043d\u0435 \u043d\u0430\u0436\u043c\u0435\u0442\u0435 \u043a\u043d\u043e\u043f\u043a\u0443 \u003Cem\u003E\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0431\u043b\u043e\u043a\u0438\u003C\/em\u003E.","Hide":"\u0421\u043a\u0440\u044b\u0442\u044c","Drag to re-order":"\u041f\u0435\u0440\u0435\u043c\u0435\u0441\u0442\u0438\u0442\u0435 \u0434\u043b\u044f \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u044f \u043f\u043e\u0440\u044f\u0434\u043a\u0430","Loading":"\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430","By @name on @date":"@name, @date","By @name":"@name","Not in menu":"\u041d\u0435 \u0432 \u043c\u0435\u043d\u044e","Alias: @alias":"\u0421\u0438\u043d\u043e\u043d\u0438\u043c: @alias","No alias":"\u0421\u0438\u043d\u043e\u043d\u0438\u043c \u043d\u0435 \u0437\u0430\u0434\u0430\u043d","New revision":"\u041d\u043e\u0432\u0430\u044f \u0440\u0435\u0434\u0430\u043a\u0446\u0438\u044f","No revision":"\u041d\u0435\u0442 \u0440\u0435\u0434\u0430\u043a\u0446\u0438\u0438","This permission is inherited from the authenticated user role.":"\u042d\u0442\u043e \u043f\u0440\u0430\u0432\u043e \u043d\u0430\u0441\u043b\u0435\u0434\u0443\u0435\u0442\u0441\u044f \u043e\u0442 \u0440\u043e\u043b\u0438 \u00ab\u0417\u0430\u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u044b\u0439 \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u00bb.","The block cannot be placed in this region.":"\u0411\u043b\u043e\u043a \u043d\u0435 \u043c\u043e\u0436\u0435\u0442 \u0431\u044b\u0442\u044c \u043f\u043e\u043c\u0435\u0449\u0435\u043d \u0432 \u044d\u0442\u043e\u0442 \u0440\u0435\u0433\u0438\u043e\u043d.","Show shortcuts":"\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c \u0441\u043e\u0447\u0435\u0442\u0430\u043d\u0438\u044f \u043a\u043b\u0430\u0432\u0438\u0448","Requires a title":"\u0422\u0440\u0435\u0431\u0443\u0435\u0442\u0441\u044f \u0437\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a","Don\u0027t display post information":"\u041d\u0435 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044e \u043c\u0430\u0442\u0435\u0440\u0438\u0430\u043b\u0430","Hide summary":"\u0421\u043a\u0440\u044b\u0442\u044c \u0430\u043d\u043e\u043d\u0441","Edit summary":"\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0430\u043d\u043e\u043d\u0441","(active tab)":"(\u0430\u043a\u0442\u0438\u0432\u043d\u0430\u044f \u0432\u043a\u043b\u0430\u0434\u043a\u0430)","@title dialog":"@title \u0434\u0438\u0430\u043b\u043e\u0433","Not customizable":"\u041d\u0435 \u043d\u0430\u0441\u0442\u0440\u0430\u0438\u0432\u0430\u0435\u043c\u044b\u0439","Not restricted":"\u041d\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d","Restricted to certain pages":"\u0417\u0430\u043f\u0440\u0435\u0449\u0435\u043d\u043e \u0434\u043b\u044f \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u0435\u043d\u043d\u044b\u0445 \u0441\u0442\u0440\u0430\u043d\u0438\u0446","An AJAX HTTP error occurred.":"\u0412\u043e\u0437\u043d\u0438\u043a\u043b\u0430 AJAX HTTP \u043e\u0448\u0438\u0431\u043a\u0430.","HTTP Result Code: !status":"\u041f\u043e\u043b\u0443\u0447\u0435\u043d\u043d\u044b\u0439 \u043a\u043e\u0434 HTTP: !status","An AJAX HTTP request terminated abnormally.":"HTTP \u0437\u0430\u043f\u0440\u043e\u0441 AJAX \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d \u043d\u0435\u043f\u0440\u0430\u0432\u0438\u043b\u044c\u043d\u043e.","Debugging information follows.":"\u0421\u043b\u0435\u0434\u0443\u0435\u0442 \u043e\u0442\u043b\u0430\u0434\u043e\u0447\u043d\u0430\u044f \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f.","Path: !uri":"\u041f\u0443\u0442\u044c: !uri","StatusText: !statusText":"\u0421\u0442\u0430\u0442\u0443\u0441\u0422\u0435\u043a\u0441\u0442: !statusText","ResponseText: !responseText":"ResponseText: !responseText","ReadyState: !readyState":"ReadyState: !readyState","Customize dashboard":"\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c \u043f\u0430\u043d\u0435\u043b\u044c","The selected file %filename cannot be uploaded. Only files with the following extensions are allowed: %extensions.":"\u0412\u044b\u0431\u0440\u0430\u043d\u043d\u044b\u0439 \u0444\u0430\u0439\u043b %filename \u043d\u0435 \u043c\u043e\u0436\u0435\u0442 \u0431\u044b\u0442\u044c \u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d. \u0412\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0444\u0430\u0439\u043b\u043e\u0432 \u0442\u043e\u043b\u044c\u043a\u043e \u0441\u043e \u0441\u043b\u0435\u0434\u0443\u044e\u0449\u0438\u043c\u0438 \u0440\u0430\u0441\u0448\u0438\u0440\u0435\u043d\u0438\u044f\u043c\u0438: %extensions.","Re-order rows by numerical weight instead of dragging.":"\u0423\u043f\u043e\u0440\u044f\u0434\u043e\u0447\u0438\u0442\u044c \u0441\u0442\u0440\u043e\u043a\u0438 \u043f\u043e \u0432\u0435\u0441\u0443 \u0432\u043c\u0435\u0441\u0442\u043e \u043f\u0435\u0440\u0435\u0442\u0430\u0441\u043a\u0438\u0432\u0430\u043d\u0438\u044f.","Show row weights":"\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c \u0432\u0435\u0441 \u043f\u043e\u043b\u0435\u0439","Hide row weights":"\u0421\u043a\u0440\u044b\u0442\u044c \u0432\u0435\u0441 \u0441\u0442\u0440\u043e\u043a","Autocomplete popup":"\u0412\u0441\u043f\u043b\u044b\u0432\u0430\u044e\u0449\u0435\u0435 \u0430\u0432\u0442\u043e\u0437\u0430\u043f\u043e\u043b\u043d\u0435\u043d\u0438\u0435","Searching for matches...":"\u041f\u043e\u0438\u0441\u043a \u0441\u043e\u0432\u043f\u0430\u0434\u0435\u043d\u0438\u0439...","Hide shortcuts":"\u0421\u043a\u0440\u044b\u0442\u044c \u044f\u0440\u043b\u044b\u043a\u0438"}} };;
(function ($) {

/**
 * A progressbar object. Initialized with the given id. Must be inserted into
 * the DOM afterwards through progressBar.element.
 *
 * method is the function which will perform the HTTP request to get the
 * progress bar state. Either "GET" or "POST".
 *
 * e.g. pb = new progressBar('myProgressBar');
 *      some_element.appendChild(pb.element);
 */
Drupal.progressBar = function (id, updateCallback, method, errorCallback) {
  var pb = this;
  this.id = id;
  this.method = method || 'GET';
  this.updateCallback = updateCallback;
  this.errorCallback = errorCallback;

  // The WAI-ARIA setting aria-live="polite" will announce changes after users
  // have completed their current activity and not interrupt the screen reader.
  this.element = $('<div class="progress" aria-live="polite"></div>').attr('id', id);
  this.element.html('<div class="bar"><div class="filled"></div></div>' +
                    '<div class="percentage"></div>' +
                    '<div class="message">&nbsp;</div>');
};

/**
 * Set the percentage and status message for the progressbar.
 */
Drupal.progressBar.prototype.setProgress = function (percentage, message) {
  if (percentage >= 0 && percentage <= 100) {
    $('div.filled', this.element).css('width', percentage + '%');
    $('div.percentage', this.element).html(percentage + '%');
  }
  $('div.message', this.element).html(message);
  if (this.updateCallback) {
    this.updateCallback(percentage, message, this);
  }
};

/**
 * Start monitoring progress via Ajax.
 */
Drupal.progressBar.prototype.startMonitoring = function (uri, delay) {
  this.delay = delay;
  this.uri = uri;
  this.sendPing();
};

/**
 * Stop monitoring progress via Ajax.
 */
Drupal.progressBar.prototype.stopMonitoring = function () {
  clearTimeout(this.timer);
  // This allows monitoring to be stopped from within the callback.
  this.uri = null;
};

/**
 * Request progress data from server.
 */
Drupal.progressBar.prototype.sendPing = function () {
  if (this.timer) {
    clearTimeout(this.timer);
  }
  if (this.uri) {
    var pb = this;
    // When doing a post request, you need non-null data. Otherwise a
    // HTTP 411 or HTTP 406 (with Apache mod_security) error may result.
    $.ajax({
      type: this.method,
      url: this.uri,
      data: '',
      dataType: 'json',
      success: function (progress) {
        // Display errors.
        if (progress.status == 0) {
          pb.displayError(progress.data);
          return;
        }
        // Update display.
        pb.setProgress(progress.percentage, progress.message);
        // Schedule next timer.
        pb.timer = setTimeout(function () { pb.sendPing(); }, pb.delay);
      },
      error: function (xmlhttp) {
        pb.displayError(Drupal.ajaxError(xmlhttp, pb.uri));
      }
    });
  }
};

/**
 * Display errors on the page.
 */
Drupal.progressBar.prototype.displayError = function (string) {
  var error = $('<div class="messages error"></div>').html(string);
  $(this.element).before(error).hide();

  if (this.errorCallback) {
    this.errorCallback(this);
  }
};

})(jQuery);
;

(function ($) {

  $(document).ready(function () {
    lastObj = false;
    strs = Drupal.settings.thmrStrings;
    $('body').addClass("thmr_call").attr("id", "thmr_" + Drupal.settings.page_id);

    var themerEnabled = 0;
    var themerToggle = function () {
      themerEnabled = 1 - themerEnabled;
      $('#themer-toggle :checkbox').attr('checked', themerEnabled ? 'checked' : '');
      $('#themer-popup').css('display', themerEnabled ? 'block' : 'none');
      if (themerEnabled) {
        document.onclick = themerEvent;
        if (lastObj != false) {
          $(lastObj).css('outline', '3px solid #999');
        }
        $('[data-thmr]').hover(
          function () {
            if (this.parentNode.nodeName != 'BODY' && $(this).attr('thmr_curr') != 1) {
              $(this).css('outline', 'red solid 1px');
            }
          },
          function () {
            if ($(this).attr('thmr_curr') != 1) {
              $(this).css('outline', 'none');
            }
          }
        );
      }
      else {
        document.onclick = null;
        if (lastObj != false) {
          $(lastObj).css('outline', 'none');
        }
        $('[data-thmr]').unbind('mouseenter mouseleave');
      }
    };
    $(Drupal.settings.thmr_popup)
      .appendTo($('body'));

    $('<div id="themer-toggle"><input type="checkbox" />'+ strs.themer_info +'</div>')
      .appendTo($('body'))
      .click(themerToggle);
    $('#themer-popup').resizable();
    $('#themer-popup')
       .draggable({
               opacity: .6,
               handle: $('#themer-popup .topper')
             })
      .prepend(strs.toggle_throbber)
    ;

    // close box
    $('#themer-popup .topper .close').click(function() {
      themerToggle();
    });
  });

  /**
   * Known issue: IE does NOT support outline css property.
   * Solution: use another browser
   */
  function themerHilight(obj) {
    // hilight the current object (and un-highlight the last)
    if (lastObj != false) {
      $(lastObj).css('outline', 'none').attr('thmr_curr', 0);
    }
    $(obj).css('outline', '#999 solid 3px').attr('thmr_curr', 1);
    lastObj = obj;
  }

  function themerDoIt(obj) {
    if (thmrInPop(obj)) {
      return true;
    }
    // start throbber
    //$('#themer-popup img.throbber').show();
    var objs = thmrFindParents(obj);
    if (objs.length) {
      themerHilight(objs[0]);
      thmrRebuildPopup(objs);
    }
    return false;
  }

  function thmrInPop(obj) {
    //is the element in either the popup box or the toggle div?
    if (obj.id == "themer-popup" || obj.id == "themer-toggle") return true;
    if (obj.parentNode) {
      while (obj = obj.parentNode) {
        if (obj.id=="themer-popup" || obj.id == "themer-toggle") return true;
      }
    }
    return false;
  }

  function themerEvent(e) {
    if (!e) {
      var e = window.event;
    };
    if (e.target) var tg = e.target;
    else if (e.srcElement) var tg = e.srcElement;
    return themerDoIt(tg);
  }

  /**
   * Find all parents with @data-thmr"
   */
  function thmrFindParents(obj) {
    var parents = new Array();
    if ($(obj).attr('data-thmr') != undefined) {
      parents[parents.length] = obj;
    }
    if (obj && obj.parentNode) {
      while ((obj = obj.parentNode) && (obj.nodeType != 9)) {
        if ($(obj).attr('data-thmr') != undefined) {
          parents[parents.length] = obj;
        }
      }
    }
    return parents;
  }

  /**
   * Check to see if object is a block element
   */
  function thmrIsBlock(obj) {
    if (obj.style.display == 'block') {
      return true;
    }
    else if (obj.style.display == 'inline' || obj.style.display == 'none') {
      return false;
    }
    if (obj.tagName != undefined) {
      var i = blocks.length;
      if (i > 0) {
        do {
          if (blocks[i] === obj.tagName) {
            return true;
          }
        } while (i--);
      }
    }
    return false;
  }

  function thmrRefreshCollapse() {
    $('#themer-popup .devel-obj-output dt').each(function() {
        $(this).toggle(function() {
              $(this).parent().children('dd').show();
            }, function() {
              $(this).parent().children('dd').hide();
            });
      });
  }

  /**
   * Rebuild the popup
   *
   * @param objs
   *   The array of the current object and its parents. Current object is first element of the array
   */
  function thmrRebuildPopup(objs) {
    // rebuild the popup box
    var id = objs[0].getAttribute('data-thmr').split(' ').reverse()[0];
    // vars is the settings array element for this theme item
    var vars = Drupal.settings[id];
    // strs is the translatable strings
    var strs = Drupal.settings.thmrStrings;
    var type = vars.type;
    var key = vars.used;

    // clear out the initial "click on any element" starter text
    $('#themer-popup div.starter').empty();

    if (type == 'function') {
      // populate the function name
      $('#themer-popup dd.key').empty().prepend('<a href="'+ strs.api_site +'api/search/'+ strs.drupal_version +'/'+ key +'" title="'+ strs.drupal_api_docs +'">'+ key + '</a>');
      $('#themer-popup dt.key-type').empty().prepend(strs.function_called);
    }
    else {
      // populate the template name
      $('#themer-popup dd.key').empty().prepend(key);
      $('#themer-popup dt.key-type').empty().prepend(strs.template_called);
    }

    // parents
    var parents = '';
    var parents = strs.parents +' <span class="parents">';
    var isFirst = true;
    for (i = 0; i < objs.length; i++) {
      thmr_ids = objs[i].getAttribute('data-thmr').split(' ').reverse();
      for (j = (i==0?1:0); j < thmr_ids.length; j++) {
        var thmrid = thmr_ids[j];
        var pvars = Drupal.settings[thmrid];
        parents += (isFirst) ? '' : '&lt; ';
        // populate the parents
        // each parent is wrapped with a span containing a 'trig' attribute with the id of the element it represents
        parents += '<span class="parent" trig="'+ objs[i].getAttribute('data-thmr') +'">'+ pvars.name +'</span> ';
        isFirst = false;
      }
    }
    parents += '</span>';
    // stick the parents spans in the #parents div
    $('#themer-popup #parents').empty().prepend(parents);
    $('#themer-popup span.parent')
      .click(function() {
        var thmr_id = $(this).attr('trig');
        var thmr_obj = $('[data-thmr = "' + thmr_id + '"]')[0];
        themerDoIt(thmr_obj);
      })
      .hover(
        function() {
          // make them highlight their element on mouseover
          $('#'+ $(this).attr('trig')).trigger('mouseover');
        },
        function() {
          // and unhilight on mouseout
          $('#'+ $(this).attr('trig')).trigger('mouseout');
        }
      );

    if (vars == undefined) {
      // if there's no item in the settings array for this element
      $('#themer-popup dd.candidates').empty();
      $('#themer-popup dd.preprocessors').empty();
      $('#themer-popup div.attributes').empty();
      $('#themer-popup div.used').empty();
      $('#themer-popup div.duration').empty();
    }
    else {
      $('#themer-popup div.duration').empty().prepend('<span class="dt">' + strs.duration + '</span>' + vars.duration + ' ms');
 
      if (vars.candidates.length > 0) {
        $('#themer-popup dd.candidates').show().empty().prepend(vars.candidates.join('<span class="delimiter"> < </span>'));
  
        if (type == 'function') {
          // populate the candidates
          $('#themer-popup dt.candidates-type').show().empty().prepend(strs.candidate_functions);
        }
        else {
          $('#themer-popup dt.candidates-type').show().empty().prepend(strs.candidate_files);
        }
      }
      else {
        $('#themer-popup dt.candidates-type, #themer-popup dd.candidates').hide();
      }

      if (vars.preprocessors.length > 0) {
        $('#themer-popup dd.preprocessors').show().empty().prepend(vars.preprocessors.join('<span class="delimiter"> + </span>'));
        $('#themer-popup dt.preprocessors-type').show().empty().prepend(strs.preprocessors);
      }
      else {
        $('#themer-popup dd.preprocessors, #themer-popup dt.preprocessors-type').hide();
      }

      if (vars.processors.length > 0) {
        $('#themer-popup dd.processors').show().empty().prepend(vars.processors.join('<span class="delimiter"> + </span>'));
        $('#themer-popup dt.processors-type').show().empty().prepend(strs.processors);
      }
      else {
        $('#themer-popup dd.processors, #themer-popup dt.processors-type').hide();
      }

      // Use drupal ajax to do what we need 
      vars_div_array = $('div.themer-variables');
      vars_div = vars_div_array[0];
      var uri = Drupal.settings.devel_themer_uri + '/' + vars['variables'];
      // Programatically using the drupal ajax things is tricky, so cheat.
      dummy_link = $('<a href="'+uri+'" class="use-ajax">Loading Vars</a>');
      $(vars_div).append(dummy_link);
      Drupal.attachBehaviors(vars_div);
      dummy_link.click();
      
      thmrRefreshCollapse();
    }
    // stop throbber
    //$('#themer-popup img.throbber').hide();
  }

})(jQuery);
;
