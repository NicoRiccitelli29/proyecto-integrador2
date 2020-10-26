module.exports = function(sequelize, dataTypes){
    let alias = 'Comment';

    let cols ={
        id: {
            autoIncremental: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        usuarios_id:{
            type : dataTypes.INTEGER
        },
        usuarios_crearon_comentarios_id:{
            type : dataTypes.INTEGER
        },
        texto:{
            type : dataTypes.STRING
        },
        fecha_de_creacion : {
            type: dataTypes.DATE
        }
    }
    let config = {
        timestamps: false,
    }




    const Comment = sequelize.define(alias, cols, config);

    return Comment;
}