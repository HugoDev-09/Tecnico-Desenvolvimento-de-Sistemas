/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package com.mycompany.atividadesjava;

import javax.swing.JOptionPane;

/**
 *
 * @author Hugo53690506
 */
public class Aeronave extends javax.swing.JFrame {
        int altitude=0;
    /**
     * Creates new form Aeronave
     */
    public Aeronave() {
        initComponents();
        
        ligar.setEnabled(false);
        autorizacaoDecolar.setEnabled(false);
        checkList.setEnabled(false);
        subir.setEnabled(false);
        autorizacaoDescer.setEnabled(false);
        descer.setEnabled(false);
        desligar.setEnabled(false);
        

        ligar.setText("Desligado");
        autorizacaoDecolar.setText("Não autorizado");
        checkList.setText("Sem Check List");
        subir.setText("0 mil pés");
        autorizacaoDescer.setText("Nao autorizado");
        descer.setText("Nao permitido");
        desligar.setText("Desligado");
        
        
    
    }
        public void atualizarResultado(){
           status.setText(" Ligar: " + ligar.getText() + "\n" + 
                    "Autorizacao decolar: " + autorizacaoDecolar.getText() + "\n" + 
                    "Check List: " + checkList.getText() + "\n" + 
                    "Subir: "+altitude+ " mil pés" +"\n" + 
                    "Autorizacao descer: " + autorizacaoDescer.getText() + "\n" +
                    "Descer: " + descer.getText() + "\n" + 
                    "Desligar: " + desligar.getText() 
           
           
           );
            
        }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonLigar = new javax.swing.JButton();
        buttonAutDecolar = new javax.swing.JButton();
        buttonCheckList = new javax.swing.JButton();
        buttonSubir = new javax.swing.JButton();
        buttonAutDescer = new javax.swing.JButton();
        buttonDesligar = new javax.swing.JButton();
        ligar = new javax.swing.JTextField();
        autorizacaoDecolar = new javax.swing.JTextField();
        checkList = new javax.swing.JTextField();
        subir = new javax.swing.JTextField();
        autorizacaoDescer = new javax.swing.JTextField();
        desligar = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        status = new javax.swing.JTextArea();
        buttonDescer = new javax.swing.JButton();
        descer = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        buttonLigar.setText("Ligar");
        buttonLigar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                buttonLigarMouseClicked(evt);
            }
        });

        buttonAutDecolar.setText("Autorizacao decolar");
        buttonAutDecolar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                buttonAutDecolarMouseClicked(evt);
            }
        });

        buttonCheckList.setText("Check List");
        buttonCheckList.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                buttonCheckListMouseClicked(evt);
            }
        });

        buttonSubir.setText("Subir");
        buttonSubir.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                buttonSubirMouseClicked(evt);
            }
        });

        buttonAutDescer.setText("Autorizacao descer");
        buttonAutDescer.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                buttonAutDescerMouseClicked(evt);
            }
        });
        buttonAutDescer.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                buttonAutDescerActionPerformed(evt);
            }
        });

        buttonDesligar.setText("Desligar");
        buttonDesligar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                buttonDesligarMouseClicked(evt);
            }
        });

        ligar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ligarActionPerformed(evt);
            }
        });

        status.setColumns(20);
        status.setRows(5);
        status.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                statusMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(status);

        buttonDescer.setText("Descer");
        buttonDescer.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                buttonDescerMouseClicked(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(87, 87, 87)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(buttonDesligar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(buttonLigar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(buttonAutDecolar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(buttonCheckList, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(buttonSubir, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(buttonAutDescer, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(buttonDescer, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(89, 89, 89)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(autorizacaoDecolar, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(checkList, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(subir, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(autorizacaoDescer, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(desligar, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(descer, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(192, 192, 192)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 441, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(ligar, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(168, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(44, 44, 44)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(buttonLigar, javax.swing.GroupLayout.PREFERRED_SIZE, 52, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ligar, javax.swing.GroupLayout.PREFERRED_SIZE, 52, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 285, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(buttonAutDecolar, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(autorizacaoDecolar, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(buttonCheckList, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(checkList, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(buttonSubir, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(subir, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(buttonAutDescer, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(autorizacaoDescer, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(buttonDescer, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(descer, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(buttonDesligar, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(desligar, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(130, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void ligarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ligarActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ligarActionPerformed

    private void buttonLigarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_buttonLigarMouseClicked
        if(ligar.getText().equals("Desligado")&& desligar.getText().equals("Desligado")){
       
        ligar.setText("Ligado");
        desligar.setText("Ligado");
       
        
        atualizarResultado();
        }                // TODO add your handling code here:
    }//GEN-LAST:event_buttonLigarMouseClicked

    private void buttonAutDecolarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_buttonAutDecolarMouseClicked
        if(ligar.getText().equals("Ligado") &&    checkList.getText().equals("Checkado"))
        {
         autorizacaoDecolar.setText("Autorizado");
         atualizarResultado();
        } else {
          JOptionPane.showMessageDialog(null,"Ligue primeiro a aeronave e faça o CheckList");
        }
        // TODO add your handling code here:
    }//GEN-LAST:event_buttonAutDecolarMouseClicked

    private void buttonCheckListMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_buttonCheckListMouseClicked
        if(ligar.getText().equals("Ligado") &&    checkList.getText().equals("Sem Check List"))
        {
         checkList.setText("Checkado");
         atualizarResultado();
         
        } else{
        JOptionPane.showMessageDialog(null, "Ligue primeiro a aeronave");
        }// TODO add your handling code here:
        
    }//GEN-LAST:event_buttonCheckListMouseClicked

    private void buttonSubirMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_buttonSubirMouseClicked
       if (autorizacaoDecolar.getText().equals("Autorizado")&& altitude <=30){
            altitude = altitude+10;
            subir.setText(String.valueOf(altitude)+" mil pés");
            atualizarResultado();
            if(altitude==40){
                JOptionPane.showMessageDialog(null,"Você atingiu a altura máxima");  
            }else if (buttonAutDecolar.getText().equals("Não autorizado")){
              JOptionPane.showMessageDialog(null,"Primeiro tenha a autortizacao para subir"); 
            }
        }
    }//GEN-LAST:event_buttonSubirMouseClicked

    private void buttonAutDescerMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_buttonAutDescerMouseClicked
         
        if(altitude>0){
        autorizacaoDescer.setText("Autorizado");
        }else{
        JOptionPane.showMessageDialog(null,"A aeronave precisa decolada");
        }
        atualizarResultado();
               
// TODO add your handling code here:
    }//GEN-LAST:event_buttonAutDescerMouseClicked
  
      
    private void buttonDesligarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_buttonDesligarMouseClicked
             if(desligar.getText().equals("Ligado") && altitude==0){
             ligar.setText("Desligado");
             desligar.setText("Desligado");
             autorizacaoDecolar.setText("Não autorizado");
        checkList.setText("Sem Check List");
        subir.setText("0 mil pés");
        autorizacaoDescer.setText("Nao autorizado");
        descer.setText("Nao permitido");
        desligar.setText("Desligado");
        atualizarResultado();
             }
             else{
             JOptionPane.showMessageDialog(null,"A aeroonave precisa estar ligarda e no chão");
             }
    }//GEN-LAST:event_buttonDesligarMouseClicked

    private void buttonAutDescerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_buttonAutDescerActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_buttonAutDescerActionPerformed

    private void statusMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_statusMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_statusMouseClicked

    private void buttonDescerMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_buttonDescerMouseClicked
         if(autorizacaoDescer.getText().equals("Autorizado")&& altitude>0){
             altitude = altitude - 10;
            descer.setText(String.valueOf(altitude)+" mil pés");
             atualizarResultado();
             if(altitude ==0 ){
             JOptionPane.showMessageDialog(null, "Aeronave no solo");
             }
             }else {JOptionPane.showMessageDialog(null, "Necessita de autorização para descer" );
         }
    }//GEN-LAST:event_buttonDescerMouseClicked
           
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Aeronave.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Aeronave.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Aeronave.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Aeronave.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Aeronave().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField autorizacaoDecolar;
    private javax.swing.JTextField autorizacaoDescer;
    private javax.swing.JButton buttonAutDecolar;
    private javax.swing.JButton buttonAutDescer;
    private javax.swing.JButton buttonCheckList;
    private javax.swing.JButton buttonDescer;
    private javax.swing.JButton buttonDesligar;
    private javax.swing.JButton buttonLigar;
    private javax.swing.JButton buttonSubir;
    private javax.swing.JTextField checkList;
    private javax.swing.JTextField descer;
    private javax.swing.JTextField desligar;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField ligar;
    private javax.swing.JTextArea status;
    private javax.swing.JTextField subir;
    // End of variables declaration//GEN-END:variables
}
