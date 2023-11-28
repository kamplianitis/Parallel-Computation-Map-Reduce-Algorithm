# Parallel-Computation-Map-Reduce-Algorithm


## Overview

This repository contains an implementation of MapReduce in Django, a high-level Python web framework. MapReduce is a programming model and processing technique designed for processing and generating large datasets in a distributed and parallel manner. This project aims to bring the power of MapReduce to Django applications, allowing developers to efficiently process large amounts of data in a distributed environment.

## Features

- **Django Integration**: Seamlessly integrate MapReduce functionality into your existing Django projects.
- **Distributed Processing**: Leverage the power of distributed computing to process large datasets in parallel.
- **Customizable**: Define your map and reduce functions to tailor the processing to your specific needs.
- **Job Management**: Monitor and manage MapReduce jobs through a Django admin interface.

## Prerequisites
  - Installation of poetry. For more info visit this link: https://python-poetry.org/docs/

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/django-mapreduce.git
    ```

2. Install poetry dependencies
    ```bash
    poetry install
    ```

3. Apply migrations:

    ```bash
    poetry run python manage.py migrate
    ```

4. Start the development server:

    ```bash
    poetry run python manage.py runserver
    ```

5. Visit `http://127.0.0.1:8000/` in your browser to access the Django admin interface.

## Usage

1. Create a new MapReduce job in the Django admin interface.
2. Define your map and reduce functions in the provided code editor.
3. Upload or specify the input dataset for the job.
4. Start the job and monitor its progress in the admin interface.

## Contributing
If you would like to contribute to the development of this project, please follow the guidelines outlined in the CONTRIBUTING.md file.

## Licence
This project is licensed under the MIT License - see the LICENSE.md file for details.

## Acknowledgements
 - Inspired by the MapReduce framework developed by Google.

Feel free to explore and enhance this Django MapReduce implementation according to your project's needs! If you have any questions or feedback, please create an issue in the repository.
