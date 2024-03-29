/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package mticket.component.report;

import java.awt.Component;
import java.awt.Dimension;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import static java.time.temporal.TemporalAdjusters.firstDayOfMonth;
import static java.time.temporal.TemporalAdjusters.lastDayOfMonth;
import mticket.component.transitionForm.Transition;

/**
 *
 * @author HuyTinh
 */
public class detailDateReportFood extends Transition {

    /**
     * Creates new form detailDateReportMovie
     */
    public detailDateReportFood() {
        initComponents();
    }

    public void initDataDateInMonth(int month, String idFood) {
        if (month > 0 && month < 13) {
            jPanel1.removeAll();
            jPanel1.setPreferredSize(new Dimension(jPanel1.getPreferredSize().width, 0));
            LocalDate now = LocalDate.of(2023, month, 1);
            LocalDate firstDay = now.with(firstDayOfMonth());
            LocalDate lastDay = now.with(lastDayOfMonth());
            do {
                dateReportFoodCard dRC = new dateReportFoodCard(firstDay.toString(), idFood);
                jPanel1.add(dRC);
                firstDay = firstDay.plus(1, ChronoUnit.DAYS);
                if ((firstDay.getDayOfMonth() - 1) % 3 == 0) {
                    jPanel1.setPreferredSize(new Dimension(jPanel1.getPreferredSize().width, jPanel1.getPreferredSize().height + dRC.getPreferredSize().height + 11));
                }
                repaint();
                validate();
            } while (firstDay.isBefore(lastDay) || firstDay.equals(lastDay));

        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        scrollPaneWin111 = new raven.scroll.win11.ScrollPaneWin11();
        jPanel1 = new javax.swing.JPanel();

        setPreferredSize(new java.awt.Dimension(890, 276));
        setLayout(new java.awt.BorderLayout());

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setPreferredSize(new java.awt.Dimension(100, 0));
        jPanel1.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.LEFT, 28, 10));
        scrollPaneWin111.setViewportView(jPanel1);

        add(scrollPaneWin111, java.awt.BorderLayout.CENTER);
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel jPanel1;
    private raven.scroll.win11.ScrollPaneWin11 scrollPaneWin111;
    // End of variables declaration//GEN-END:variables

    @Override
    public Component[] initTransition() {
        return jPanel1.getComponents();
    }
}
