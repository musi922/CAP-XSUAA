module.exports = srv => {
    //srv means service
    console.log(`Service name: ${srv.name} is served at ${srv.path}` );
    //xs means give me the data you got if you go on this path give me data you got
    srv.after('READ', 'Products', xs=>{
        console.log(xs)
        const newProducts = [];
        xs.forEach(x=>{
            if (x.stock > 3){ 
                x.name = `(10% off!) ${x.name}`;
            }
            newProducts.push(x);

        })
        console.log(newProducts);
        
        return newProducts
    })
}