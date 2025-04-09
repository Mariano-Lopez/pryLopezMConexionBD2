using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace pryConexionBBDD2
{
    public partial class frmInicio : Form
    {
        public frmInicio()
        {
            InitializeComponent();
        }

        private void frmInicio_Load(object sender, EventArgs e)
        {
            string connectionString = "Server=localhost;Database=Comercio;Trusted_Connection=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    MessageBox.Show("✅ Conexión exitosa a la base de datos.");

                    string query = "SELECT * FROM Contactos"; 
                    SqlCommand command = new SqlCommand(query, connection);

                    
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();

                    
                    dataAdapter.Fill(dataTable);

                    
                    dgvContactos.DataSource = dataTable;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("❌ Error al conectar: " + ex.Message);
                }
            }
        }
    }
    
}
