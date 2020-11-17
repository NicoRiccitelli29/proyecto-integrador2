module.exports = function(sequelize, dataTypes){
    let alias = 'PreguntaSeguridad';

    let cols = {
        id: {
             autoIncrement: true,
             primaryKey: true,
             type: dataTypes.INTEGER,
         },
         usuarios_id : {
             type: dataTypes.INTEGER,
         },
        pregunta : {
            type: dataTypes.STRING
        
        },

    }

    let config = {
        tableName : "PreguntaSeguridad",
        timestamps : false,
    }

 const PreguntaSeguridad = sequelize.define(alias, cols, config);

   PreguntaSeguridad.associate = function(models) {
        PreguntaSeguridad.belongsTo(models.Usuarios, {
           as: "PreguntaSeguridad",
           foreignKey: "usuarios_id",
       });
    }


    return PreguntaSeguridad;
}
