# Databases

Entity Relationship Diagram (ERD)  
http://draw.io/  
https://app.diagrams.net/  

Conceptual Data Model:  

A conceptual data model incudes entities and relationships between these entities. 

An entity is an example of real world object about which data must be captured. Their names are usually nouns like Concert, Ticket or Venue for example. Strong entity is a type of entity that is not dependant of other entities, and examples of strong entities can be Venue or Client. Weak entity is an entity type that can't exist without other entities like Sale can't exist without Client, Ticket can't exist without Event.

Relationship is an association or a dependency between two entities. Each entity should participate in at least one relationship.

Conceptual database model focus on the most essential entities and their relationships. This stage of data modeling is highly absttract, independent form technology and data structuring. It does not specify details like attributes or primary keys. Conceptial model allows for easier concept representation, it is readable for client and other stakeholders on design stage, and it helps build business data model and recognise business needs. It also allows for more flexibility in implementing changes and correcting mistakes.

Maping of the conceptual model into a logical model is first step in database desing proces. Mapping from conceptual to logical model allows for best implementation, relations optimalisation and data distribution, at the same time ensuring that there is no loss of information.It turns set of entities and relationships into relational tables. In relational schema it specifies attributes (columns) with each entity as a table. For strong entities it defines primary keys and foreign keys references. 

Seweryn.Sapinski.Lab5concept.drawio

Examples


