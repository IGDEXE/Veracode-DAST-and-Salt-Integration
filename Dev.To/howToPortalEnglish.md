Access the Veracode portal and in the top bar select **Scans & Analysis**, then click on **Dynamic Analysis**.

On the DAST screen, click the **Scan API Specifications** button in the upper right corner:
![Start Scan Page](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/71gexyu7fxqon4mdbk5a.png)

On the configuration screen, choose a name to identify the project, using the **Dynamic Analysis Name** field:
![Scan Definition](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/54hfqci7mqanluwerc34.png)

In **API Specifications** you can upload a new project or choose one that has already been uploaded, remembering that the compatible specification types are:
- OpenAPI 3.0 and 2.0 (.yaml, .json)
- HTTP Archive (.har)

And the types of authentication that can be configured:
- Client Certification
- Basic Authentication/NTLMv2
- Custom HTTP Headers
- OAuth 2.0

Once the specification has been loaded (the limit for a single scan is 250 specifications), you can define a Browser and/or User Agent in the section below.

If you want to customize any configuration, you can click on the pencil at the end of the Sever line in the specification:
![Edit Scan](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/34fojd4q8bape6s0cstu.png)

On this screen you can choose the methods that will be analyzed, the authentication mode and the use of ISM:
![Options](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/lq725i6t8dkpzwg1o7jr.png)

In **Visibility** Settings you can define the teams that can view projects. If you have a common user, the project will automatically be available to members of your team.

In **Organization Information** you can enter additional information, such as the business unit and the responsible manager. Finally, in **Scanning Certification** you need to check the check box confirming that you have permission to carry out the tests, in order to enable the buttons below:
![Buttons](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/1o4e4aj92ynya8doxp6d.png)

In **Schedule** we can choose some options, such as start now and recurrence, and define time windows for carrying out the analysis:
![Schedule](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/qgb3tbw7baebogpt3hyx.png)

Once confirmed, simply click on **Review and Submit** and then on **Submit**.