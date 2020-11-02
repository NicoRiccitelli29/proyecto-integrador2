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
        timestamps: false,
    }
    const Usuarios = sequelize.define(alias, cols, config);

    return Usuarios



}