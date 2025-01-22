namespace capdeployement;

entity Products {
    key ID: UUID;
    name: String;
    price: Integer;
    stock: Integer;
    supplier: Association to Suppliers
    
}


entity Suppliers{
    key ID: UUID;
    name: String;
    products : Association to many Products on products.supplier = $self; //get products where prodducts.supplier = suplier.id
}

