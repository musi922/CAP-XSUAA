using capdeployement as my from '../db/schema';

service ProductsService{
    entity Products as projection on my.Products;
    entity Suppliers as projection on my.Suppliers;
    entity Orders as projection on my.Orders;
}