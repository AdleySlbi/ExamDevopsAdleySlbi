package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"wsf/partieldevops/partieldevopsadleysalabi/handler"
)

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	// connection := os.Getenv("DATABASE_URL")
	fmt.Println("Tout va bien")
	fmt.Println("Everything is going well well")

	fmt.Println("Server is running at ", port)
	fmt.Println("Server is really running at ", port)

	myHandler := handler.NewHandler()

	server := &http.Server{
		Addr:    ":" + port,
		Handler: myHandler,
	}

	log.Fatal(server.ListenAndServe())
}
