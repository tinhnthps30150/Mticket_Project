/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package mticket.component.movie;

import java.awt.Dimension;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import javax.swing.JLabel;
import javax.swing.JTabbedPane;
import mticket.entity.Movie;
import mticket.entity.Ticket;
import mticket.entity.TicketDetail;

/**
 *
 * @author HuyTinh
 */
public class listMovie extends javax.swing.JPanel {

    /**
     * Creates new form listMovie
     */
    public static Ticket tk;
    public static TicketDetail td;

    public listMovie() {
        initComponents();
    }

    public void initData(List<Movie> listMovie, detailMovie detailMovie, JLabel lblTongTien) {
        this.setPreferredSize(new Dimension(this.getPreferredSize().width, 0));
        for (Movie mv : listMovie) {
            int i = listMovie.indexOf(mv);
            movieCard cM = new movieCard();
            cM.initData(mv.getHinhAnh(), "Đặt vé");
            cM.setName(String.valueOf(i));
            cM.addMouseListener(new MouseAdapter() {
                @Override
                public void mouseClicked(MouseEvent e) {
                    tk = new Ticket();
                    td = new TicketDetail();
                    detailMovie.initDetailMovie(listMovie.get(Integer.parseInt(cM.getName())));
                    ((JTabbedPane) detailMovie.getParent().getParent().getParent()).setSelectedIndex(1);
                    tk.setGiaPhim(mv.getGiaPhim());
                    lblTongTien.setText("Tạm tính: " + NumberFormat.getCurrencyInstance(new Locale("vn", "vn")).format(mv.getGiaPhim()));
                }
            });
            if (i % 5 == 0) {
                if (i != 0) {
                    this.setPreferredSize(new Dimension(this.getPreferredSize().width, this.getPreferredSize().height + cM.getPreferredSize().height + 10));
                }
            }
            this.add(cM);
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

        setBackground(new java.awt.Color(255, 255, 255));
        setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.LEFT, 6, 10));
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
