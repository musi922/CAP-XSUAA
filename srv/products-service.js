module.exports = srv => {
    console.log(`Service name: ${srv.name} is served at ${srv.path}` );
    //xs means give me the data you got 
    srv.after('READ', 'Products', xs=>{
        console.log(xs)
    })
}