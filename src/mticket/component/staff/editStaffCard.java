/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package mticket.component.staff;

import java.awt.Color;
import java.awt.Cursor;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import mticket.component.sweetAlert.SweetAlert;
import mticket.dao.staffDAO;
import mticket.entity.Staff;
import mticket.utils.mticketUtils;
import mticket.view.editStaffJDialog;
import mticket.view.managerJFrame;

/**
 *
 * @author HuyTinh
 */
public class editStaffCard extends javax.swing.JPanel {

    /**
     * Creates new form editMovieCard
     */
    private Staff stf;
    private staffDAO sDAO = new staffDAO();

    public editStaffCard(Staff stf) {
        initComponents();
        this.stf = stf;
        jPanel1.setVisible(false);
        lblAnh.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseEntered(MouseEvent e) {
                jPanel1.setVisible(true);
            }
        });
        jPanel1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseEntered(MouseEvent e) {
                jPanel1.setVisible(true);
            }

            @Override
            public void mouseExited(MouseEvent e) {
                hoverOut();
            }
        });
        mticketUtils.setIcon(new ImageIcon(this.getClass().getResource("/mticket/image/" + stf.getHinhAnh())), lblAnh);
    }

    void hoverOut() {
        jPanel1.setVisible(false);
        if (!jPanel1.isVisible()) {
            jPanel1.setVisible(false);
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

        jPanel2 = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        btnXoa = new com.k33ptoo.components.KButton();
        btnSua = new com.k33ptoo.components.KButton();
        lblAnh = new javax.swing.JLabel();

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        setOpaque(false);
        setPreferredSize(new java.awt.Dimension(210, 270));
        addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                formFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                formFocusLost(evt);
            }
        });
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new Color(0,0,0,25));
        jPanel1.setPreferredSize(new java.awt.Dimension(170, 208));

        btnXoa.setText("Xóa");
        btnXoa.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        btnXoa.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnXoa.setkEndColor(new Color(159,153,255));
        btnXoa.setkHoverEndColor(new Color(76,76,153));
        mticketUtils.setFont(btnXoa, "Kodchasan-Medium.ttf", 18f);
        btnXoa.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        btnXoa.setkHoverStartColor(new Color(159,153,255));
        btnXoa.setkStartColor(new Color(76,76,153));
        btnXoa.setCursor(new Cursor(Cursor.HAND_CURSOR));
        btnXoa.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnXoaMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnXoaMouseExited(evt);
            }
        });
        btnXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoakButton3ActionPerformed(evt);
            }
        });

        btnSua.setText("Sửa");
        btnSua.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        btnSua.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnSua.setkEndColor(new Color(159,153,255));
        btnSua.setkHoverEndColor(new Color(76,76,153));
        mticketUtils.setFont(btnSua, "Kodchasan-Medium.ttf", 18f);
        btnSua.setkHoverForeGround(new java.awt.Color(255, 255, 255));
        btnSua.setkHoverStartColor(new Color(159,153,255));
        btnSua.setkStartColor(new Color(76,76,153));
        btnSua.setCursor(new Cursor(Cursor.HAND_CURSOR));
        btnSua.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnSuaMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnSuaMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnSuaMouseExited(evt);
            }
        });
        btnSua.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSuakButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(41, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(41, 41, 41))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(66, Short.MAX_VALUE)
                .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(47, 47, 47)
                .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(67, 67, 67))
        );

        add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 210, 270));

        lblAnh.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 5, 0, new Color(159, 153, 255)));
        lblAnh.setPreferredSize(new java.awt.Dimension(210, 270));
        lblAnh.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lblAnhMouseExited(evt);
            }
        });
        add(lblAnh, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 210, 270));
    }// </editor-fold>//GEN-END:initComponents

    private void btnXoakButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXoakButton3ActionPerformed
        // TODO add your handling code here:
         if (mticketUtils.comfirm("Bạn có thực sự muốn xóa?") == JOptionPane.OK_OPTION) {
            sDAO.delete(stf);
            mticketUtils.alert("Xóa thành công!");
            listEditStaffCard.lS.initData(sDAO.selectAll());
        }
    }//GEN-LAST:event_btnXoakButton3ActionPerformed

    private void btnSuakButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSuakButton3ActionPerformed
        // TODO add your handling code here
        SweetAlert sA = new editStaffJDialog(managerJFrame.mFrame, true);
        ((editStaffJDialog) sA).initData(this.stf);
        sA.showAlert();
    }//GEN-LAST:event_btnSuakButton3ActionPerformed

    private void lblAnhMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblAnhMouseExited
        // TODO add your handling code here:
        hoverOut();
    }//GEN-LAST:event_lblAnhMouseExited

    private void btnSuaMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSuaMouseExited
        // TODO add your handling code here:
        hoverOut();
    }//GEN-LAST:event_btnSuaMouseExited

    private void btnSuaMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSuaMouseEntered
        // TODO add your handling code here:
        jPanel1.setVisible(true);
    }//GEN-LAST:event_btnSuaMouseEntered

    private void btnXoaMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnXoaMouseEntered
        // TODO add your handling code here:
        jPanel1.setVisible(true);
    }//GEN-LAST:event_btnXoaMouseEntered

    private void btnXoaMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnXoaMouseExited
        // TODO add your handling code here:
        hoverOut();
    }//GEN-LAST:event_btnXoaMouseExited

    private void btnSuaMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSuaMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_btnSuaMouseClicked

    private void formFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_formFocusLost
        // TODO add your handling code here:
    }//GEN-LAST:event_formFocusLost

    private void formFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_formFocusGained
        // TODO add your handling code here:
    }//GEN-LAST:event_formFocusGained


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.k33ptoo.components.KButton btnSua;
    private com.k33ptoo.components.KButton btnXoa;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JLabel lblAnh;
    // End of variables declaration//GEN-END:variables
}
