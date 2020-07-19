/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.admin.DOB;

import javax.swing.Icon;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author son
 */
public class TheModel extends AbstractTableModel{
    private String[] col;
    private Object[][] row;
    public TheModel(){}
    public TheModel(Object[][] data,String[] col){
        this.col=col;
        this.row=data;
    }
    public Class getColumClass(int col){
        if(col== 3){
            return Icon.class;
        }else{
            return getValueAt(0, col).getClass();
        }
    }
    @Override
    public int getRowCount() {
      return this.row.length;
    }

    @Override
    public int getColumnCount() {
        return this.col.length;
    }

    @Override
    public Object getValueAt(int rowIndex, int colIndex) {
        return this.row[rowIndex][colIndex];
    }
    public String getColName(int col){
        return this.col[col];
    }
    
}
