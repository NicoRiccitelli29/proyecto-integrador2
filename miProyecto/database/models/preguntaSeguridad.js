module.exports = function(sequelize, dataTypes){
    let alias = "preguntaSeguridad"

    let cols = {
        id: {
             autoIncrement: true,
             primaryKey: true,
             type: dataTypes.INTEGER,
         },
         usuarios_id : {
             type: dataTypes.INTEGER,
         },
        PreguntaSeguridad : {
            type: dataTypes.STRING
        
        },

    }

    let config = {
        tableName : "preguntaSeguridad",
        timestamps : false,
    }

 const preguntaSeguridad = sequelize.define(alias, cols, config);

   preguntaSeguridad.associate = function(models) {
        preguntaSeguridad.belongsTo(models.Usuarios, {
            as: "usuario",
            foreignKey: "preguntaSeguridad_id",
        });
    }


    return preguntaSeguridad;
}
