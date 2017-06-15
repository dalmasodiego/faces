// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mycompany.jsf.converter;

import com.mycompany.domain.Categoria;
import com.mycompany.jsf.converter.CategoriaConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

privileged aspect CategoriaConverter_Roo_Converter {
    
    declare parents: CategoriaConverter implements Converter;
    
    declare @type: CategoriaConverter: @FacesConverter("com.mycompany.jsf.converter.CategoriaConverter");
    
    public Object CategoriaConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Integer id = Integer.parseInt(value);
        return Categoria.findCategoria(id);
    }
    
    public String CategoriaConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Categoria ? ((Categoria) value).getCodigo().toString() : "";
    }
    
}
