module.exports = function(sequelize, dataTypes){
    let alias = "Usuario"
    
    let cols = {
        
    }
    let config ={
        timestamps: false,
    }
    const Usuario = sequelize.define(alias, cols, config);

    return Usuario



}