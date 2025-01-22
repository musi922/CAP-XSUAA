namespace capdeployement;

entity Products {
    key ID: Integer;
    name: String;
    price: Integer;
    stock: Integer;
    supplier: Association to Suppliers
    
}


entity Suppliers{
    key ID: Integer;
    name: String;
    products : Association to many Products on products.supplier = $self; //get products where prodducts.supplier = suplier.id
}

