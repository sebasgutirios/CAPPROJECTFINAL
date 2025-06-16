namespace com.logaligroupfinalproject;

using { sap.common.CodeList } from '@sap/cds/common';

entity Header {
    key idHeader     : String(36);
        email        : String(30);
        firstName    : String(30);
        lastName     : String(30);
        country      : String(30);
        createon     : Date;
        deliveryDate : DateTime;
        orderStatus  : Association to Status;
        imageUrl     : String(255);
        //relacion de 1  a muchos
        toItems      : Composition of  many Items
                           on toItems.idHeader = $self;

};

entity Items {
    key idItems          : String(36);
        idHeader         : Association to Header;
        name             : String(40);
        description      : String(40);
        releaseDate      : Date;
        discontinuedDate : Date;
        price            : Decimal(12, 2);
        height           : Decimal(12, 2);
        width            : Decimal(10, 3);
        depth            : Decimal(10, 3);
        quantity         : Decimal(10, 3);
        unitofmeasure    : String(3) default 'CM';

};

entity Status : CodeList {
    key code        : String(20) enum {
            InStock = 'In Stock';
            OutOfStock = 'Out of Stock';
            LowAvailability = 'Low Availability';
        };
        criticality : Integer;
};