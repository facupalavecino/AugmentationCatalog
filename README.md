## Features developed by Facundo Palavecino

### API RESTful

A preliminary API was developed in order to get data from the catalog (or post some). This API is used by the following scripts:
- https://github.com/matiasurbieta/UNLP

Objective is that configurations made in the scripts could be stored here. Also, configurations may be fetched from different devices.

There are 3 endpoints available:
- POST a new augmentation: Configuration data comes in a JSON format. URL from the source page is stored as reference, so is possible to filter augmentations when a GET request arrives.
- GET configuration (by ID): The catalog sends back the augmentation which ID is being requested. This endpoint is used when more than 1 configuration is available for a given page and the page sends a GET request.
- GET configurations: Using the source page's URL, augmentations stored are filtered so the catalog responds to the request sending the correct augmentations (those made for that page). 

There are 3 possible responses: 
- There is not any configuration stored for that page. An error message is sent back.
- There is 1 configuration stored for that page. The configuration data is sent as JSON.
- There is more than 1 configuration stored for that page. An array filled with the configurations' IDs is sent back.


A sequence diagram that illustrates data flow between scripts and the catalog is available at:

AugmentationCatalog/app/assets/images/Integración Plugin de augmentación con Repositorio.png
