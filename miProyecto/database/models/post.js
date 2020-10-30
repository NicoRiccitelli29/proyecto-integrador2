module.exports = function(sequelize, dataTypes){
    let alias = "Post"

    let cols = {
       id: {
            autoIncremental: true,
            primaryKey: true,
            type: dataTypes.INTEGER,
        },
        usuarios_id : {
            type: dataTypes.INTEGER,
        },
        url_imagen :{
            type: dataTypes.STRING,
        },
        texto: {
            type: dataTypes.STRING,
        },
        fecha_de_creacion : {
            type:dataTypes.DATE,
        }
    }
    let config = {
        timestamps: false,
    }
    const Post = sequelize.define(alias, cols, config);
    return Post;
}