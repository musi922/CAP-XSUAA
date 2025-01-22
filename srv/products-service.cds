using capdeployement as my from '../db/schema';

service ProductsService{
    @Capabilities: {Insertable: true, Updatable: true, Deletable: false}
    entity Products as projection on my.Products;
    @readonly entity Suppliers as projection on my.Suppliers;
    entity Orders as projection on my.Orders;
}