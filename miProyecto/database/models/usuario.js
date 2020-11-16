module.exports = function(sequelize, dataTypes){
    let alias = "Usuarios"
    
    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        nombre: {
            type: dataTypes.STRING,
        },
        apellido: {
            type: dataTypes.STRING,
        },
        correo: {
            type: dataTypes.STRING,
        },
        password: {
            type: dataTypes.STRING,
        },
        telefono: {
            type: dataTypes.STRING,
        },
        fecha_de_nacimiento:{
            type: dataTypes.DATE
        },

    }
    let config ={
        //tableName: "usuarios",
        timestamps: false,
    }
    const Usuarios = sequelize.define(alias, cols, config);

    Usuarios.associate = function(models) {
        Usuarios.hasMany(models.Post, {
            as: "posteos",
            foreignKey: "usuarios_id",
        });
    }



    return Usuarios;



}