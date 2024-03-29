/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package mticket.component.movie;

import java.awt.Color;
import javax.swing.ImageIcon;
import mticket.entity.Movie;
import mticket.utils.mticketUtils;

/**
 *
 * @author HuyTinh
 */
public class detailMovie extends javax.swing.JPanel {

    /**
     * Creates new form detailMovie
     */
    public detailMovie() {
        initComponents();
        mticket.utils.mticketUtils.setFont(txtTenPhim, "Kodchasan-Medium.ttf", 36f);
    }

    public void initDetailMovie(Movie mv) {
        if (mv.getTenPhim().length() > 38) {
            txtTenPhim.setText(mv.getTenPhim().substring(0, 38) + "...");
            txtTenPhim.setToolTipText(mv.getTenPhim());
        } else {
            txtTenPhim.setText(mv.getTenPhim());
            txtTenPhim.setToolTipText("");
        }
        txtTheLoai.setText(mv.getTheLoai());
        txtDaoDien.setText("Đạo diễn: " + mv.getDaoDien());
        txtThoiLuong.setText("Thời lượng: " + mv.getThoiLuong());
        if (mv.getDienVien().length() > 63) {
            txtDienVien.setText("Diễn viên: " + mv.getDienVien().substring(0, 63) + "...");
            txtDienVien.setToolTipText("Diễn viên: " + mv.getDienVien());
        } else {
            txtDienVien.setText("Diễn viên: " + mv.getDienVien());
            txtDienVien.setToolTipText("");
        }
        txtMoTa.setText(mv.getMoTa());
        mticketUtils.setIcon(new ImageIcon(getClass().getResource("/mticket/image/" + mv.getHinhAnh())), pictureBox1, 20);
        setName(mv.getMaPhim());
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        movie5 = new com.k33ptoo.components.KGradientPanel();
        pictureBox1 = new mticket.component.pictureBox.PictureBox();
        txtTenPhim = new javax.swing.JLabel();
        txtThoiLuong = new javax.swing.JLabel();
        txtDaoDien = new javax.swing.JLabel();
        txtTheLoai = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        movie13 = new com.k33ptoo.components.KGradientPanel();
        jScrollPane4 = new javax.swing.JScrollPane();
        txtMoTa = new javax.swing.JTextArea();
        txtDienVien = new javax.swing.JLabel();

        setBackground(new java.awt.Color(255, 255, 255));

        movie5.setBackground(new java.awt.Color(255, 255, 255));
        movie5.setkBorderRadius(18);
        movie5.setkEndColor(new Color(76,76,153));
        movie5.setkStartColor(new Color(159,153,255));
        movie5.setOpaque(false);
        movie5.setPreferredSize(new java.awt.Dimension(590, 766));
        movie5.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        movie5.add(pictureBox1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 570, 745));

        txtTenPhim.setFont(new java.awt.Font("Segoe UI", 1, 22)); // NOI18N
        txtTenPhim.setText("Tên phim:");
        txtTenPhim.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 4, 0, new Color(159,153,255)));

        txtThoiLuong.setFont(new java.awt.Font("Segoe UI", 0, 24)); // NOI18N
        txtThoiLuong.setText("Thời lượng:");

        txtDaoDien.setFont(new java.awt.Font("Segoe UI", 0, 24)); // NOI18N
        txtDaoDien.setText("Đạo diễn:");

        txtTheLoai.setFont(new java.awt.Font("Segoe UI", 0, 24)); // NOI18N
        txtTheLoai.setText("Thể loại:");

        movie13.setBackground(new java.awt.Color(255, 255, 255));
        movie13.setkEndColor(new Color(76,76,153));
        movie13.setkStartColor(new Color(159,153,255));
        movie13.setOpaque(false);

        jScrollPane4.setBackground(new Color(0,0,0,0));
        jScrollPane4.setBorder(null);
        jScrollPane4.setOpaque(false);

        txtMoTa.setEditable(false);
        txtMoTa.setBackground(new java.awt.Color(255, 255, 255));
        txtMoTa.setColumns(20);
        txtMoTa.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        txtMoTa.setLineWrap(true);
        txtMoTa.setRows(5);
        txtMoTa.setWrapStyleWord(true);
        txtMoTa.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 5, 0, 5, new Color(0,0,0,0)));
        mticket.utils.mticketUtils.setFont(txtMoTa, "Kodchasan-Medium.ttf", 24f);
        txtMoTa.setDisabledTextColor(new java.awt.Color(255, 255, 255));
        txtMoTa.setFocusable(false);
        txtMoTa.setMargin(new java.awt.Insets(0, 0, 0, 0));
        txtMoTa.setSelectedTextColor(new java.awt.Color(0, 0, 0));
        jScrollPane4.setViewportView(txtMoTa);

        javax.swing.GroupLayout movie13Layout = new javax.swing.GroupLayout(movie13);
        movie13.setLayout(movie13Layout);
        movie13Layout.setHorizontalGroup(
            movie13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(movie13Layout.createSequentialGroup()
                .addGap(5, 5, 5)
                .addComponent(jScrollPane4, javax.swing.GroupLayout.DEFAULT_SIZE, 881, Short.MAX_VALUE)
                .addContainerGap())
        );
        movie13Layout.setVerticalGroup(
            movie13Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(movie13Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane4)
                .addContainerGap())
        );

        txtDienVien.setFont(new java.awt.Font("Segoe UI", 0, 24)); // NOI18N
        txtDienVien.setText("Diễn viên:");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(0, 0, 0)
                .addComponent(movie5, javax.swing.GroupLayout.PREFERRED_SIZE, 590, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtTenPhim, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txtTheLoai, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(movie13, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(txtDaoDien, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(txtThoiLuong, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(txtDienVien, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addContainerGap())))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(12, 12, 12)
                        .addComponent(jSeparator1)
                        .addContainerGap())))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(txtTenPhim, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtTheLoai)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtDaoDien)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtDienVien)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtThoiLuong)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 3, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(movie13, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addComponent(movie5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 0, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JSeparator jSeparator1;
    private com.k33ptoo.components.KGradientPanel movie13;
    private com.k33ptoo.components.KGradientPanel movie5;
    private mticket.component.pictureBox.PictureBox pictureBox1;
    private javax.swing.JLabel txtDaoDien;
    private javax.swing.JLabel txtDienVien;
    private javax.swing.JTextArea txtMoTa;
    private javax.swing.JLabel txtTenPhim;
    private javax.swing.JLabel txtTheLoai;
    private javax.swing.JLabel txtThoiLuong;
    // End of variables declaration//GEN-END:variables
}
