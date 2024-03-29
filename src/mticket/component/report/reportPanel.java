/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package mticket.component.report;

import java.awt.Color;
import java.awt.Component;
import java.awt.event.MouseAdapter;
import mticket.component.transitionForm.Transition;
import mticket.dao.reportDAO;

/**
 *
 * @author HuyTinh
 */
public class reportPanel extends Transition {

    public CurveLineChart getChart() {
        return chart;
    }

    public void setChart(CurveLineChart chart) {
        this.chart = chart;
    }

    /**
     * Creates new form movieReportPanel
     */
    public reportPanel() {
        initComponents();
        chart.setfTST(formTransition1);
        chart.setFillColor(true);
        chart.addLegend("Movie", Color.decode("#9f99ff"), Color.decode("#4c4c99"));
        chart.addLegend("Food", Color.decode("#e65c00"), Color.decode("#F9D423"));
        chart.addLegend("Total", Color.decode("#0099F7"), Color.decode("#F11712"));
        mticket.utils.mticketUtils.setFont(chart, "Kodchasan-Bold.ttf", 14f);
        movieReportJPanel mRP = new movieReportJPanel();
        foodReportJPanel fRP = new foodReportJPanel();
        totalReportJPanel tRP = new totalReportJPanel();
        chart.setmRP(mRP);
        chart.setfRP(fRP);
        chart.settRP(tRP);
        formTransition1.showForm(mRP);
    }

    public void setData() {
        for (Object[] object : reportDAO.getAmountInMonth()) {
            chart.addData(new ModelChart(String.valueOf(object[1]), new double[]{Double.parseDouble(String.valueOf(object[2])), Double.parseDouble(String.valueOf(object[3])), Double.parseDouble(String.valueOf(object[4]))}));
        }
        chart.start();
    }

    public void eventForDetailMovie(MouseAdapter event) {
        chart.getmRP().addMouseListener(event);
    }
    
    public void eventForDetailFood(MouseAdapter event) {
        chart.getfRP().addMouseListener(event);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        movie8 = new com.k33ptoo.components.KGradientPanel();
        movie9 = new com.k33ptoo.components.KGradientPanel();
        chart = new mticket.component.report.CurveLineChart();
        formTransition1 = new mticket.component.transitionForm.FormTransition();

        setPreferredSize(new java.awt.Dimension(1510, 1000));
        setLayout(new java.awt.BorderLayout());

        movie8.setBackground(new java.awt.Color(255, 255, 255));
        movie8.setkBorderRadius(18);
        movie8.setkEndColor(new Color(76,76,153));
        movie8.setkFillBackground(false);
        movie8.setkStartColor(new Color(159,153,255));
        movie8.setOpaque(false);

        movie9.setBackground(new java.awt.Color(255, 255, 255));
        movie9.setkBorderRadius(18);
        movie9.setkEndColor(new java.awt.Color(255, 255, 255));
        movie9.setkStartColor(new java.awt.Color(255, 255, 255));
        movie9.setOpaque(false);
        movie9.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        chart.setForeground(new java.awt.Color(0, 0, 0));
        chart.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                chartMouseClicked(evt);
            }
        });
        movie9.add(chart, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 330, 1480, 450));
        movie9.add(formTransition1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 1480, 310));

        javax.swing.GroupLayout movie8Layout = new javax.swing.GroupLayout(movie8);
        movie8.setLayout(movie8Layout);
        movie8Layout.setHorizontalGroup(
            movie8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(movie8Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(movie9, javax.swing.GroupLayout.DEFAULT_SIZE, 1498, Short.MAX_VALUE)
                .addContainerGap())
        );
        movie8Layout.setVerticalGroup(
            movie8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(movie8Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(movie9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        add(movie8, java.awt.BorderLayout.CENTER);
    }// </editor-fold>//GEN-END:initComponents

    private void chartMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_chartMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_chartMouseClicked


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private mticket.component.report.CurveLineChart chart;
    private mticket.component.transitionForm.FormTransition formTransition1;
    private com.k33ptoo.components.KGradientPanel movie8;
    private com.k33ptoo.components.KGradientPanel movie9;
    // End of variables declaration//GEN-END:variables
    @Override
    public Component[] initTransition() {
        return new Component[]{};
    }
}
