<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/static/bootstrap.css">
    <title>Result</title>
</head>
<body>
    <div class="container">


        <div class="alert alert-dark" role="alert">
            {{result}}
          </div>

        <div class="row justify-content-between">  
                <div class="card text-center" style="width: 18rem;">
                    <img src="/static/kitty.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                    <h5 class="card-title">Кошки</h5>
                    <div class="progress" style="height: 30px;">
                        <div class="progress-bar progress-bar-striped progress-bar-animated cats_bar" role="progressbar" style="width: 0%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="10000"></div>
                      </div>
                    </div>
                </div>
                <div class="card text-center" style="width: 18rem;">
                    <img src="/static/dog.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                    <h5 class="card-title">Собаки</h5>
                    <div class="progress" style="height: 30px;">
                        <div class="progress-bar progress-bar-striped progress-bar-animated dogs_bar" role="progressbar" style="width: 0%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="10000"></div>
                      </div>
                    </div>
                </div>
                <div class="card text-center" style="width: 18rem;">
                    <img src="/static/parrots.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                    <h5 class="card-title">Попугаи</h5>
                    <div class="progress" style="height: 30px;">
                        <div class="progress-bar progress-bar-striped progress-bar-animated parrots_bar" role="progressbar" style="width: 0%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="10000"></div>
                      </div>
                    </div>
                </div>
        </div>  
    </div>
    <script src="/static/script.js"></script>
</body>
</html>