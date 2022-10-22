/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mainOrganizador;


import java.util.ArrayList;
import javax.swing.table.DefaultTableModel;
import jdk.nashorn.internal.objects.NativeArray;

/**
 *
 * @author slend
 */
public final class FrmListarListadoTareas extends javax.swing.JFrame {    
    /**
     * Creates new form FrmListarListaTareas
     */
    public FrmListarListadoTareas() {
        initComponents();
        setLocationRelativeTo(this);
        listarListadoTareas();
    }
    /**
     * Obtiene la lista de Alumnos y los agrega en la
     * tabla del formulario
     */
    public void listarListadoTareas(){
        ArrayList<ListadoTareas> lista = new ArrayList();
        lista = EstadoGlobal.TransferenciaTablero.leerTareasTablero();
        int cantidadTareas = lista.size();
        DefaultTableModel modelo = (DefaultTableModel) tblListadoListaTareas.getModel();        
        String[] datos = new String[3];
        for(int i=0;i<cantidadTareas;i++){
            datos[0]=String.valueOf(lista.get(i).getIdListadoTareas());
            datos[1]=String.valueOf(lista.get(i).getNombreListado());
            datos[2]=String.valueOf(lista.get(i).getTotalTareas());
            modelo.addRow(datos);            
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

        jMenuItem1 = new javax.swing.JMenuItem();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblListadoListaTareas = new javax.swing.JTable();
        btnRegresar = new javax.swing.JButton();

        jMenuItem1.setText("jMenuItem1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("LISTAR LISTADO DE TAREAS, CLICK PARA VER UNA");

        tblListadoListaTareas.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        tblListadoListaTareas.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Identificación", "Nombre", "Total Tareas"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.Integer.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        tblListadoListaTareas.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblListadoListaTareasMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tblListadoListaTareas);

        btnRegresar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/mainOrganizador/imagenes/exit1.png"))); // NOI18N
        btnRegresar.setText("Regresar");
        btnRegresar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRegresarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 600, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnRegresar, javax.swing.GroupLayout.PREFERRED_SIZE, 182, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(198, 198, 198))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(5, 5, 5)
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 339, Short.MAX_VALUE)
                .addGap(18, 18, 18)
                .addComponent(btnRegresar)
                .addGap(34, 34, 34))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnRegresarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRegresarActionPerformed
        this.setVisible(false);
        Tablero frm = new Tablero();
        frm.setVisible(true);
    }//GEN-LAST:event_btnRegresarActionPerformed

    private void tblListadoListaTareasMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblListadoListaTareasMouseClicked
        int seleccionar = tblListadoListaTareas.rowAtPoint(evt.getPoint());  
        ListadoTareas Transferencia = EstadoGlobal.TransferencialistadoTareas;
        Transferencia.setIdListadoTareas((String) tblListadoListaTareas.getValueAt(seleccionar,0));
        Transferencia.setNombreListado(String.valueOf(tblListadoListaTareas.getValueAt(seleccionar,1)));
        Transferencia.setTotalTareas(Integer.parseInt(String.valueOf(tblListadoListaTareas.getValueAt(seleccionar,2))));
        ListadoTarea listaTarea = new ListadoTarea();
        listaTarea.setVisible(true);
        this.setVisible(false);      
    }//GEN-LAST:event_tblListadoListaTareasMouseClicked

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
            java.util.logging.Logger.getLogger(FrmListarListadoTareas.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrmListarListadoTareas.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrmListarListadoTareas.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrmListarListadoTareas.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmListarListadoTareas().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnRegresar;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tblListadoListaTareas;
    // End of variables declaration//GEN-END:variables
}