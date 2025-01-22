using capdeployement as my from '../db/schema';

service Statistics {
    @readonly 
    entity OrdersInfo as projection on my.Orders excluding{
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy,
        product
    }
    entity Consumers as projection on my.Consumers;
    

}
