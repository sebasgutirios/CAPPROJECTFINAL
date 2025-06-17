using {com.logaligroupfinalproject as entities2} from '../db/schema';

service logaliGroup {

    entity Header as projection on entities2.Header;
    entity Items  as projection on entities2.Items;
    entity Status as projection on entities2.Status;
};
