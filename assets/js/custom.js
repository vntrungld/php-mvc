$(document).ready(function() {
    $("#add").click(function() {
    		var lastField = $("#buildyourform .form-row");
    		console.log(lastField.length);
        var intId = lastField ? lastField.length : 0;
        var fieldWrapper = $("<div class=\"form-row\" id=\"field" + intId + "\"/>");
        fieldWrapper.data("idx", intId);
        var fName = $('<div class="form-group col-8"><input type="text" class="form-control" name="answers[' + intId + '][content]"/></div>');
        var fType = $('<div class="form-group col-3"><select class="custom-select" name="answers[' + intId + '][status]"><option value="0">Wrong</option><option value="1">Right</option></select></div>');
        var removeButton = $('<div class="form-group col-1"><button type="button" class="btn btn-danger">-</button></div>');
        removeButton.click(function() {
            $(this).parent().remove();
        });
        fieldWrapper.append(fName);
        fieldWrapper.append(fType);
        fieldWrapper.append(removeButton)
        $("#buildyourform").append(fieldWrapper);
    });
    $("#preview").click(function() {
        $("#yourform").remove();
        var fieldSet = $("<fieldset id=\"yourform\"><legend>Your Form</legend></fieldset>");
        $("#buildyourform div").each(function() {
            var id = "input" + $(this).attr("id").replace("field","");
            var label = $("<label for=\"" + id + "\">" + $(this).find("input.fieldname").first().val() + "</label>");
            var input;
            switch ($(this).find("select.fieldtype").first().val()) {
                case "checkbox":
                    input = $("<input type=\"checkbox\" id=\"" + id + "\" name=\"" + id + "\" />");
                    break;
                case "textbox":
                    input = $("<input type=\"text\" id=\"" + id + "\" name=\"" + id + "\" />");
                    break;
                case "textarea":
                    input = $("<textarea id=\"" + id + "\" name=\"" + id + "\" ></textarea>");
                    break;    
            }
            fieldSet.append(label);
            fieldSet.append(input);
        });
    
        $("body").append(fieldSet);
    });
});
