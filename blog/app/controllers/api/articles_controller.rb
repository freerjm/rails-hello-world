# frozen_string_literal: true

# ArticlesController manages handling requests for articles.
class Api::ArticlesController < ApplicationController
  # GET /articles
  def index
    articles = Article.all
    render json: ArticleSerializer.new(articles).serializable_hash
  end

  # GET /articles/{id}
  def show
    id = params[:id]
    article = Article.find(id)
    render json: ArticleSerializer.new(article).serializable_hash
  end

  # POST /articles/
  def create
    p = creation_params
    p[:id] = SecureRandom.uuid
    article = Article.new(p)
    if article.save
      render json: ArticleSerializer.new(article).serializable_hash
    else
      render error: { error: 'Failure to create new article.' }, status: 400
    end
  end

  # PUT /articles/{id}
  def update
    id = params[:id]
    article = Article.find(id)
    if article
      p = update_params
      article.update(p)
      render json: ArticleSerializer.new(article).serializable_hash
    else
      create
    end
  end

  # DELETE /articles{id}
  def destroy
    id = params[:id]
    article = Article.find(id)
    if article
      article.destroy
      render status: 204
    else
      render error: { error: "Article with ID #{id} could not be found" }, status: 404
    end
  end

  private

  def creation_params
    # require the text and title attributes during creation.
    values = params.require(%i[text title])
    {
      text: values.first,
      title: values.second
    }
  end

  def update_params
    # require the text and title attributes during creation.
    values = params.require(%i[id text title])
    {
      id: values.first,
      text: values.second,
      title: values.third
    }
  end
end
