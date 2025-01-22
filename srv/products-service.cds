using capdeployement as my from '../db/schema';

service ProductsService{
    @readonly entity Products as projection on my.Products;
    @readonly entity Suppliers as projection on my.Suppliers;
    @readonly entity Orders as projection on my.Orders;
}